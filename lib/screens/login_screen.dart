import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_game_flutter/view_model/app_controller.dart';
import 'game_screen.dart';

class LoginScreen extends StatelessWidget {

   const LoginScreen({Key? key}) : super(key: key);
   final bool isReg=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.red],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GetBuilder<AppController>(builder: (appController) {
              return Text(
                appController.a.toString(),
                style: const TextStyle(fontSize: 20, color: Colors.white),
              );
            }),
            Container(
              margin: const EdgeInsets.all(43),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.amber,
                gradient: const LinearGradient(
                  colors: [Colors.black, Colors.red],
                ),
                border: Border.all(
                    color: Colors.black87,
                    width: 2.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(200.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("GO GAME",
                    style: TextStyle(color: Colors.white, fontSize: 46)),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(
                    height: 45,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () => {
                          AppController.to.isim={},
                          //GameScreen().RandC1.clear(),
                          //GameScreen().RandC2.clear(),
                          Get.to(() =>  GameScreen(),transition: Transition.cupertino),
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text(
                          "PLAY GAME",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ))),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 45,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {
                            Get.defaultDialog(
                                title: "Sign-Up",
                                content: Column(
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        icon: Icon(Icons.circle),
                                        labelText: "user_name",
                                      ),
                                    ),
                                    TextFormField(
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        icon: Icon(Icons.circle),
                                        labelText: "password",
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        icon: Icon(Icons.circle),
                                        labelText: "user_name",
                                      ),
                                    ),
                                    ElevatedButton(onPressed: () {} ,child: const Text("KAYIT"))
                                  ],
                                ));

                          Get.defaultDialog(
                              title: "Sign-Up",
                              content: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(Icons.circle),
                                labelText: "user_name",
                              ),
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.circle),
                                labelText: "password",
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(Icons.circle),
                                labelText: "user_name",
                              ),
                            ),
                            ElevatedButton(onPressed: () {} ,child: const Text("KAYIT"))
                          ],
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text(
                          "PLAY ONLINE",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ))),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 45,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.snackbar("Veysel", "Mesaj oluşturuldu.",colorText: Colors.white);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text(
                          "GAME QUIT",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ))),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 45,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () => AppController.to.aUpdate(),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text(
                          "A UPDATE ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ))),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
