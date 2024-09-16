import 'dart:convert';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/HostMachineData.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HostUserData {
  saveHostUserPassword(String password) async {
    final prefs = await SharedPreferences.getInstance();
    final bytesPassword = utf8.encode(password);
    final base64StrPassword = base64.encode(bytesPassword);
    prefs.setString('hostUserPassword', base64StrPassword);
  }

  Future<String> readHostUserPassword() async {
    final prefs = await SharedPreferences.getInstance();
    final base64StrPassword = prefs.getString('hostUserPassword');
    if (base64StrPassword != "" && base64StrPassword != null) {
      final bytesPassword = base64.decode(base64StrPassword);
      return utf8.decode(bytesPassword);
    } else {
      return "";
    }
  }

  Future<String> readHostUserNodeClient() async {
    final prefs = await SharedPreferences.getInstance();
    final base64StrPassword = prefs.getString('hostUserNodeClient');
    if (base64StrPassword != "" && base64StrPassword != null) {
      final bytesPassword = base64.decode(base64StrPassword);
      return utf8.decode(bytesPassword);
    } else {
      String clientName = await _generateEthosNodeClientName();
      final bytesClientName = utf8.encode(clientName);
      final base64StrPassword = base64.encode(bytesClientName);
      prefs.setString('hostUserNodeClient', base64StrPassword);
      return clientName;
    }
  }

  Future<String> readHostUserNodeVMName() async {
    String clientName = await readHostUserNodeClient();
    return sanitizeUnderscore(clientName);
  }

  String sanitize(String input) {
    // Remove special characters and convert to lowercase
    return input
        .replaceAll(RegExp(r'[^\w\s]'), '') // Remove special characters
        .replaceAll(RegExp(r'\s+'), '_'); // Replace spaces with underscores
  }

  String sanitizeUnderscore(String input) {
    return input.replaceAll(
        RegExp(r'_+'), '-'); // Replace underscores with hypen
  }

  String sanitizeName(String input, int maxLength) {
    // Remove special characters and convert to lowercase
    String cleanedInput = input
        .replaceAll(
            RegExp(r'[^\w\s-]'), '') // Remove special characters except hyphen
        .toLowerCase();

    // Split the input by hyphen
    List<String> words = cleanedInput.split('-');

    // Initialize the sanitized output
    String sanitized = '';

    for (String word in words) {
      // If adding the current word doesn't exceed the max length, add it
      if (sanitized.length + word.length <= maxLength) {
        if (sanitized.isEmpty) {
          sanitized = word;
        } else {
          sanitized = '$sanitized-$word';
        }
      } else {
        // If the current word exceeds the remaining allowed length, stop processing
        break;
      }
    }

    // Return the final sanitized string
    return sanitized;
  }

  String formatDate(DateTime date) {
    final DateFormat monthFormat =
        DateFormat('MMM'); // Three-character month representation
    final String month = monthFormat.format(date);

    final String day = DateFormat('dd').format(date);
    final String year = DateFormat('yyyy').format(date);

    final String hours = date.hour.toString().padLeft(2, '0') + "h";
    final String minutes = date.minute.toString().padLeft(2, '0') + "m";
    final String seconds = date.second.toString().padLeft(2, '0') + "s";

    return "${year}${month}${day}_${hours}${minutes}${seconds}";
  }

  Future<String> _generateEthosNodeClientName() async {
    String _hostName = await HostMachineData().hostName();

    String _publicIPUniverse =
        (await SimpleCommandExecuter.run("curl http://ipinfo.io/country"))
            .last
            .stdout
            .toString()
            .trim();
    String _publicIPRegion =
        (await SimpleCommandExecuter.run("curl http://ipinfo.io/postal"))
            .last
            .stdout
            .toString()
            .trim();
    var _now = DateTime.now();

    // Create a formatted client name
    String _clientName =
        "eNode_${sanitize(_publicIPUniverse)}_${sanitize(_publicIPRegion)}_${sanitizeName(_hostName, 12)}_${formatDate(_now)}";

    return _clientName;
  }

  Future<bool> isPasswordSet() async {
    if (await readHostUserPassword() == "") {
      return false;
    } else {
      return true;
    }
  }
}
