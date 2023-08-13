import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSecureStorage {
  static final _storage = FlutterSecureStorage();

  static const keyUsername = 'username';
  static const keyPets = 'Pets';
  static const keyBirthday = 'birthday';

  static Future setUsername(String username) async {
    await _storage.write(key: keyUsername, value: username);
  }

  static Future<String?> getUsername() async {
    await _storage.read(key: keyUsername);
  }

  static Future setPets(List<String> pets) async {
    final value = json.encode(pets);

    await _storage.write(key: keyUsername, value: value);
  }

  static Future<List<String>?> getPets() async {
    final value = await _storage.read(key: keyPets);

    return value == null ? null : List<String>.from(json.decode(value));
  }

  static Future setBirthday(DateTime dateOfBirth) async {
    final birthday = dateOfBirth.toIso8601String();

    await _storage.write(key: keyBirthday, value: birthday);
  }

  static Future<DateTime?> getBirthday() async {
    final birthday = await _storage.read(key: keyBirthday);

    return birthday == null ? null : DateTime.tryParse(birthday);
  }
}
