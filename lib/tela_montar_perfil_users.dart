import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

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
              onPressed: (){},
              icon: Icon(Icons.save, color: Colors.white,),),
          ),
          Padding(padding: EdgeInsets.all(8),
            child: Icon(Icons.search, color: Colors.white,),
          ),
        ],
        backgroundColor: Color(0xFFD097FC),
      ),

      body: Container(
        height: altura,
        width: largura,
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
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

                const Expanded(
                  flex: 2,
                  child: ListTile(
                    title: Text('Olá Danilo Ferreira !'),
                    subtitle: Text('Escolha abaixo seus gêneros literários favoritos'),
                  ),
                ),

              ],
            ),

            SingleChildScrollView(
              primary: true,
              scrollDirection: Axis.vertical,
              //width: largura * 0.8,
              //height: altura * 0.8,

              //child: FiltroPerfil(),
              //child: ChipsFiltros(),
              child: ChipsUsuarios(),
            ),


          ],
        ),
      ),

      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: const [
          TabItem(icon: Icon(Icons.home), title: 'Home'),
          TabItem(icon: Icon(Icons.person), title: 'Perfil'),
          TabItem(icon: Icon(Icons.menu_book_sharp), title: 'Galeria'),
          TabItem(icon: Icon(Icons.wifi), title: 'Web'),
          TabItem(icon: Icon(Icons.comment), title: 'Conversas'),
          TabItem(icon: Icon(Icons.shopping_cart_outlined), title: 'Shop'),
        ],
        elevation: 5,
        //height: 50,

        backgroundColor: Color(0xFFD097FC),
        onTap: (int i) => print('click index=$i'),

        //type: BottomNavigationBarType.fixed,
        //showSelectedLabels: true,
        //backgroundColor: Color(0xFFD097FC),

      ),
    );
  }
}
