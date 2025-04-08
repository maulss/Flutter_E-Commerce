import 'package:flutter_ecommerce/providers/shared_pref/shared_pref_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_provider.g.dart';

@riverpod
class Token extends _$Token {
  @override
  Future<String?> build() async {
    final prefs = ref.watch(sharedPreferencesProvider);
    return prefs.getString('token');
  }

  Future<void> saveToken(String token) async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setString('token', token);
    state = AsyncData(token); 
  }

  Future<void> removeToken() async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.remove('token');
    state = const AsyncData(null); 
  }
}
