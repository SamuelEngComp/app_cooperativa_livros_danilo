import 'package:app_cooperativa_livros_danilo/views/tela_chat.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_galeria.dart';

import 'package:app_cooperativa_livros_danilo/views/tela_home_inicial.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_login.dart';

import 'package:app_cooperativa_livros_danilo/views/tela_perfil.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_shop.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_web.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';


class PaginaHome extends StatefulWidget {


  @override
  State<PaginaHome> createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {

  List<Widget> paginas = [TelaHomeInicial(), TelaPerfil(), TelaGaleria(), TelaWeb(), TelaChat(), TelaShop()];

  int selectedIndex = 0;

  @override
  void initState() {
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Image.asset('assets/imagens/iconeLivro.png'),
        centerTitle: true,
        actions: const [
          Icon(Icons.search, color: Colors.white,),
        ],
        backgroundColor: const Color(0xFFD097FC),
      ),
      body: paginas[selectedIndex],
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Center(
                child: Row(
                  children: [
                    Text('NAVEGAR'),
                    SizedBox(width: 30,),
                    Container(
                      child: Image.asset('assets/imagens/logoSemFundo.png',
                      width: 150,height: 150,),
                    ),
                  ],
                ),
              ),


            ),
            ListTile(
              title: const Text('AÇÃO'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('AVENTURA'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('CLÁSSICOS'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('COMÉDIA'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('CONTOS'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('DRAMA'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('ESPIRITUAL'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('FANTASIA'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('FICÇÃO CINETÍFICA'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('FICÇÃO HISTÓRICA'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('HUMOR'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('MISTÉRIO'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('NÃO FICÇÃO'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('PARANORMAL'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            const Divider(
              height: 20,
              color: Color(0xFFD097FC),
            ),
            ListTile(
              title: const Text('SAIR'),
              leading: IconButton(
                icon: Icon(Icons.logout),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TelaLogin()));
                  },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: const Icon(Icons.home, color: Colors.black, size: 25,), title: (selectedIndex == 0) ?'Home':''),
          TabItem(icon: const Icon(Icons.person, color: Colors.black, size: 25,), title: (selectedIndex == 1) ? 'Perfil': ''),
          TabItem(icon: const Icon(Icons.auto_stories_outlined, color: Colors.black, size: 25,), title: (selectedIndex == 2) ? 'Galeria': ''),
          TabItem(icon: const Icon(Icons.public, color: Colors.black, size: 25,), title: (selectedIndex == 3) ?'Web':''),
          TabItem(icon: const Icon(Icons.forum, color: Colors.black, size: 25,), title: (selectedIndex == 4) ? 'Bate-papo': ''),
          TabItem(icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black, size: 25,), title: (selectedIndex == 5) ? 'Shop':''),
        ],
        elevation: 5,
        top: -25,
        curveSize: 80,
        backgroundColor: const Color(0xFFD097FC),
        initialActiveIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });

        },

      ),
    );
  }
}
