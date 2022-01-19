

import 'package:app_cooperativa_livros_danilo/tela_cadastro_user.dart';
import 'package:app_cooperativa_livros_danilo/tela_montar_perfil.dart';
import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {

  bool _visiblePassword =  false;

  @override
  void initState() {
    _visiblePassword = false;
  }

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: largura,
        height: altura,
        child: ListView(
          children: [
            Container(
              width: largura * 0.8,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),

                  Expanded(
                    flex: 0,
                    child: Image.asset(
                      'assets/imagens/logoSemFundo.png',
                      width: 200,
                      height: 200,
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  const Expanded(
                    flex: 0,
                    child: Text(
                      'Seja bem-vindo(a)!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    width: largura * 0.8,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.email),
                            hintText: 'E-mail',
                            contentPadding: const EdgeInsets.all(8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !_visiblePassword,
                          decoration: InputDecoration(
                            hintText: 'Senha',
                            contentPadding: const EdgeInsets.all(8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  _visiblePassword? Icons.visibility: Icons.visibility_off
                              ),
                              onPressed: (){
                                setState(() {
                                  _visiblePassword = !_visiblePassword;
                                });
                              },
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(context,
                                      MaterialPageRoute(builder: (context) => TelaMontarPerfil()), (route) => false);
                                },
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(5, 12, 5, 12),
                                  child: Text(
                                    'Acessar',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(
                                      const Color(0xFFBDA8FC)),

                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0))),
                                ),
                              ),
                            ]
                        ),

                        Container(
                          height: altura/6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 50,),
                              const Text('Você é novo aqui? '),

                              TextButton(
                                  onPressed: (){
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(builder: (context) => TelaCadastroUser()), (route) => false);
                                  },
                                  child: const Text('Crie sua conta',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                    color: Colors.black),),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
