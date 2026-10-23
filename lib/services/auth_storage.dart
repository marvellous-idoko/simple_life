import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthStorageService {
  final _authStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      resetOnError: true,
    )
  );

  static const String _tokenKey = 'auth';

  Future<void> saveToken(token) async {
    await _authStorage.write(key:_tokenKey, value: token);
  }

  Future<Map<String, dynamic>?> getToken() async {
    return jsonDecode((await _authStorage.read(key: _tokenKey)) ?? '{}') as Map<String, dynamic>?;
  }

  Future<void> deleteToken() async {
    await _authStorage.delete(key: _tokenKey);
  }
}
