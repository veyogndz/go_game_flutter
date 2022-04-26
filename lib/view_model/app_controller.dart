import 'package:get/get.dart';
import 'package:go_game_flutter/services/storage_service.dart';
import '../enums/player.dart';

class AppController extends GetxController {
  static AppController to = Get.find();

  bool isWhitePlay = false;

  checkTurn() {
    isWhitePlay = !isWhitePlay;
    update();
  }

  Map <int , Player> isim = {};

  void addDomino(index , player){
    if(isim[index]!=Player.White &&isim[index]!= Player.Black){
      isim[index] = player;
      update();
    }
  }

  @override
  void onInit() {
    a = StorageService().getA();
    super.onInit();
  }

  int a = 0;

  aUpdate() {
    a++;
    StorageService().setA(a);
    update();
  }
}
