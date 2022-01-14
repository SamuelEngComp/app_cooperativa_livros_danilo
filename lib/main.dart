import 'package:app_cooperativa_livros_danilo/tela_cadastro_user.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'tela_login.dart';

void main() {
  runApp(MyApp());
}


Map<int, Color> color =
{
  50:Color.fromRGBO(189,168,252, .1),
  100:Color.fromRGBO(189,168,252, .2),
  200:Color.fromRGBO(189,168,252, .3),
  300:Color.fromRGBO(189,168,252, .4),
  400:Color.fromRGBO(189,168,252, .5),
  500:Color.fromRGBO(189,168,252, .6),
  600:Color.fromRGBO(189,168,252, .7),
  700:Color.fromRGBO(189,168,252, .8),
  800:Color.fromRGBO(189,168,252, .9),
  900:Color.fromRGBO(189,168,252, 1),
};


class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);


  MaterialColor colorCustom = MaterialColor(0xFFBDA8FC, color);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(


        primarySwatch: colorCustom,
      ),
      //home: TelaLogin(),
       // home: TelaCadastroUser(),
      home: AnimatedSplashScreen(
            splashIconSize: 300,
            splash: Image.asset(
              'assets/imagens/logoSemFundo.png',
            ),
            splashTransition: SplashTransition.fadeTransition,
            nextScreen: TelaLogin(),
      ),);
  }
}

