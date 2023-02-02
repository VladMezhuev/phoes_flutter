import '../gen/assets.gen.dart';
import '../screens/catalog/phone_item_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class PhonesRepository {
  List<PhoneItem> getPhones() {
    return [
      PhoneItem(id: 1, image: Assets.images.phone1.path, title: 'Phone 1'),
      PhoneItem(id: 2, image: Assets.images.phone2.path, title: 'Phone 2'),
      PhoneItem(id: 3, image: Assets.images.phone3.path, title: 'Phone 3'),
      PhoneItem(id: 4, image: Assets.images.phone4.path, title: 'Phone 4'),
    ];
  }
}

