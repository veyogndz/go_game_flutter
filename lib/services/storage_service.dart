import 'package:get_storage/get_storage.dart';

class StorageService {
  final storage = GetStorage();

  int getA() {
    return storage.read("a") ?? 0;
  }

  setA(int a) {
    storage.write("a", a);
  }
}
