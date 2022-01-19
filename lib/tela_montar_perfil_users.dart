import 'package:app_cooperativa_livros_danilo/componentes/barra_inferior_navegacao.dart';
import 'package:app_cooperativa_livros_danilo/pagina_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/widgets.dart';

import 'chips_usuarios.dart';

class TelaMontarPerfilUsers extends StatefulWidget {

  @override
  _TelaMontarPerfilUsersState createState() => _TelaMontarPerfilUsersState();
}

class _TelaMontarPerfilUsersState extends State<TelaMontarPerfilUsers> {


  bool isSelected = false;
  int selectedIndex = 0;

  @override
  void initState() {
    isSelected = false;
    selectedIndex = 0;
  }


  @override
  Widget build(BuildContext context) {

    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        title:Image.asset('assets/imagens/iconeLivro.png'),
        centerTitle: true,
        actions: [
          Padding(padding: EdgeInsets.all(8),
            child: IconButton(
              onPressed: (){
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) => PaginaHome()), (route) => false);
              },
              icon: Icon(Icons.save, color: Colors.white,),),
          ),
         // Padding(padding: EdgeInsets.all(8),
         //   child: Icon(Icons.search, color: Colors.white,),
         // ),
        ],
        backgroundColor: Color(0xFFD097FC),
      ),

      body: Container(
        height: altura,
        width: largura,
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Container(
                       child: const IconButton(
                         onPressed: null,
                         icon: Icon(Icons.camera_alt),
                       ),
                       decoration: BoxDecoration(
                         border: Border.all(color: Colors.purple),
                         borderRadius: BorderRadius.circular(50),
                       ),
                       padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                     ),
                   ),

                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Danilo Ferreira'),
                  ),


                 ],
                ),


                Expanded(
                  flex: 1,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(1),
                      hintText: 'Busque seu livro aqui',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),

              ],
            ),

            Container(
              padding: EdgeInsets.all(20),
              child: Text('Encontre seus amigos para falar sobre suas leituras:'),
            ),

            Center(
              child: SingleChildScrollView(
                primary: true,
                scrollDirection: Axis.vertical,
                child: ChipsUsuarios(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
