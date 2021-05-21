import 'package:shared_preferences/shared_preferences.dart';

class AccountData {
  saveAccountId(String accountId) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('accountId', accountId);
  }

  Future<String> readAccountId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('accountId') ?? "";
  }
}
