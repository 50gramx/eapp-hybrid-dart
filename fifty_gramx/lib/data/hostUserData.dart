import 'dart:convert';

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

  Future<bool> isPasswordSet() async {
    if (await readHostUserPassword() == "") {
      return false;
    } else {
      return true;
    }
  }
}
