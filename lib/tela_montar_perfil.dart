import 'package:app_cooperativa_livros_danilo/chips_filtros.dart';
import 'package:flutter/material.dart';

import 'chips_usuarios.dart';
import 'filtros_perfil.dart';

class TelaMontarPerfil extends StatefulWidget {


  @override
  _TelaMontarPerfilState createState() => _TelaMontarPerfilState();
}

class _TelaMontarPerfilState extends State<TelaMontarPerfil> {

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

    List<Widget> generos = [Text('Ação', style: TextStyle(color: Colors.white),),
      Text('Aventura', style: TextStyle(color: Colors.white),), Text('Clássicos', style: TextStyle(color: Colors.white),),
      Text('Comédia', style: TextStyle(color: Colors.white),), Text('Contos', style: TextStyle(color: Colors.white),),
    Text('Drama', style: TextStyle(color: Colors.white),), Text('Espiritual', style: TextStyle(color: Colors.white),),
      Text('Fantasia', style: TextStyle(color: Colors.white),), Text('Ficção Cientifica', style: TextStyle(color: Colors.white),),
      Text('Ficção histórica', style: TextStyle(color: Colors.white),), Text('Humor', style: TextStyle(color: Colors.white),),
      Text('Mistério', style: TextStyle(color: Colors.white),), Text('Não ficção', style: TextStyle(color: Colors.white),),
      Text('Paranormal', style: TextStyle(color: Colors.white),), Text('Poesia', style: TextStyle(color: Colors.white),),
      Text('Romance', style: TextStyle(color: Colors.white),), Text('Suspense', style: TextStyle(color: Colors.white),),
    Text('Terror', style: TextStyle(color: Colors.white),), Text('Fanfic', style: TextStyle(color: Colors.white),),
      Text('Outros', style: TextStyle(color: Colors.white),)];


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
        width: largura,
        height: altura,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
            children: [
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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



        Container(
          height: altura * 0.7,
          width: largura * 0.8,
          //child: FiltroPerfil(),
          //child: ChipsFiltros(),
          child: ChipsUsuarios(),
        ),
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        onTap: (index){
          setState(() {
            selectedIndex = index;
            print('SelectedIndex: $selectedIndex');
            print('Index: $index');
          });
        },

        //type: BottomNavigationBarType.fixed,
        //showSelectedLabels: true,
        //backgroundColor: Color(0xFFD097FC),
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xFFD097FC),
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
            backgroundColor: Color(0xFFD097FC),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Galeria',
            backgroundColor: Color(0xFFD097FC),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wifi),
            label: 'Web',
            backgroundColor: Color(0xFFD097FC),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: 'Chat',
            backgroundColor: Color(0xFFD097FC),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Shop',
            backgroundColor: Color(0xFFD097FC),
          ),
        ],
      ),
    );
  }
}
