import 'package:app_cooperativa_livros_danilo/login_page.dart';
import 'package:app_cooperativa_livros_danilo/service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../tela_home_inicial.dart';
import '../tela_login.dart';

class AuthCheck extends StatefulWidget {


  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {

    AuthService auth = Provider.of<AuthService>(context);

    if(auth.isLoading){
      return loading();
    }
    //else if(auth.usuario == null){
    //  return LoginPage();
    //}
    else{
      return TelaHomeInicial();
    }
  }

  Widget loading() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
