import 'package:app_cooperativa_livros_danilo/tela_chat.dart';
import 'package:app_cooperativa_livros_danilo/tela_galeria.dart';
import 'package:app_cooperativa_livros_danilo/tela_home_inicial.dart';
import 'package:app_cooperativa_livros_danilo/tela_perfil.dart';
import 'package:app_cooperativa_livros_danilo/tela_shop.dart';
import 'package:app_cooperativa_livros_danilo/tela_web.dart';
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
              decoration: BoxDecoration(
                color: Color(0xFFD097FC),
                image: DecorationImage(
                  image: AssetImage('assets/imagens/logoSemFundo.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Text('NAVEGAR'),
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
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: const [
          TabItem(icon: Icon(Icons.home, color: Colors.black, size: 30,), title: 'Home'),
          TabItem(icon: Icon(Icons.person, color: Colors.black, size: 30,), title: 'Perfil'),
          TabItem(icon: Icon(Icons.menu_book_sharp, color: Colors.black, size: 30,), title: 'Galeria'),
          TabItem(icon: Icon(Icons.wifi, color: Colors.black, size: 30,), title: 'Web'),
          TabItem(icon: Icon(Icons.comment, color: Colors.black, size: 30,), title: 'Conversas'),
          TabItem(icon: Icon(Icons.shopping_cart_outlined, color: Colors.black, size: 30,), title: 'Shop'),
        ],
        elevation: 5,
        top: -25,
        curveSize: 80,
        backgroundColor: Color(0xFFD097FC),
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
