import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class _SharedPreferencesKeys {
  static const favoritePhonesList = 'favorite_hones_list';
}

@injectable
class AppPreferences {

  final _storage = SharedPreferences.getInstance();

  setFavoritePhones(List<int> phonesIdList) async {
    final storage = await _storage;

    storage.setStringList(
      _SharedPreferencesKeys.favoritePhonesList,
      phonesIdList.map((id) => id.toString()).toList(),
    );
  }

  Future<List<String>> getFavoritePhones() async {
    final storage = await _storage;
    final list = storage.getStringList(_SharedPreferencesKeys.favoritePhonesList) ?? [];
    return list;
  }

}
