import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_game_flutter/view_model/app_controller.dart';
import '../enums/player.dart';
import '../models/row_column_model.dart';

class GameScreen extends StatelessWidget {

  GameScreen({Key? key }) : super(key: key);

  Map<int,int>RandC1=Map();
  Map<int,int>RandC2=Map();
  bool isBeside = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("THINK TO WIN"),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Get.back(),
        ),
      ),


      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/back.jpg"), fit: BoxFit.cover),
        ),

        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/ahsap.jpg"), fit: BoxFit.cover),
            border: Border.all(
                color: Colors.black87, width: 0.5, style: BorderStyle.solid),
          ),
          margin: const EdgeInsets.only(top: 142, left: 10, right: 10, bottom: 204),
          child: GetBuilder<AppController>(
            builder: (appController) {
              return GridView.count(
                padding: const EdgeInsets.all(5),
                crossAxisCount:9,
                children: List.generate(
                  81,
                      (index) {
                    Player? _domino= appController.isim[index];
                    return GestureDetector(
                      onTap: () => {appController.addDomino(index,appController.isWhitePlay? Player.White : Player.Black),appController.checkTurn(), konumGoster(index)},
                      child: Container(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 1,
                              height: double.infinity,
                              color: Colors.black,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.8),
                          shape: BoxShape.circle,
                          color:_domino == Player.White? Colors.white : _domino == Player.Black? Colors.black:Colors.transparent
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: Column(
        children: [
          Container(
          padding: const EdgeInsets.only(bottom: 170,right: 0,left: 80,top: 110),
          child:FloatingActionButton(onPressed: (){},backgroundColor: Colors.white,foregroundColor: Colors.black,child: const Text("P2")),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 0,right: 0,left: 80,top: 411),
            child:FloatingActionButton(onPressed: (){
              print("Alan Bulundu.");
              alanBul();
            },backgroundColor: Colors.black,child: const Text("P1")),
          ),
        ],
      ),
    );
  }
  void konumGoster(index){
    if(AppController.to.isWhitePlay){
      RandC1.addAll(RowColumnModel(col : index%9,row : index~/9).toJson());
      debugPrint("SİYAH PUL COL ROW"
          ""+RandC1.toString());
    }
    else{
      RandC2.addAll(RowColumnModel(row : index~/9, col : index%9).toJson());
      debugPrint("BEYAZ PUL COL ROW"
          ""+RandC2.toString());
    }
  }
  void alanBul(){
    if(isBeside=true){

    }
  }
}
