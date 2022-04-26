import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_game_flutter/screens/login_screen.dart';
import 'package:go_game_flutter/view_model/app_controller.dart';
import 'package:google_fonts/google_fonts.dart';

void main()async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final AppController appController = Get.put(AppController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const Splash(),
    );
  }
}
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late SpinKitFadingCircle spinkit;

  @override
  void initState() {
    super.initState();

    spinkit = SpinKitFadingCircle(
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven ? Colors.red : Colors.blue,
          ),
        );
      },
    );

    Future.delayed(const Duration(seconds: 4), () async {
      Navigator.pushReplacement(
          context,  MaterialPageRoute(builder: (context) =>  const LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            spinkit,
           // Image.asset('assets/ahsap.jpg', width: 40, height: 40,),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Go Game",
              style: GoogleFonts.nunito(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}