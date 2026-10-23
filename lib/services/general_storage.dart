import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class GeneralStorageService {
  // Key names to avoid typos
  static const String _keyUsername = 'username';
  static const String _keyIsDarkMode = 'is_dark_mode';

  // Save String data
   Future<SharedPreferences?> returnStorage() async {
    return await SharedPreferences.getInstance();
  }
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
  Future<void> saveMessage(Map<String, dynamic> message) async {
     (await returnStorage())?.setString('message', jsonEncode(message ?? {}));
  }

  // Read String data
  Future<Map<String, dynamic>> getMessage() async {
    return jsonDecode((await returnStorage())?.getString('message') ?? '{}') as Map<String, dynamic>; // Returns null if not found
  }


  // Clear a specific key
  Future<void> removeMessage() async {
    await (await returnStorage())?.remove('message');
  }

  // Clear all data saved by this app
  Future<void> clearAll() async {
      await (await returnStorage())?.clear();
  }
}
