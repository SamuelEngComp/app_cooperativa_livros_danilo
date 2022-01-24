import 'package:app_cooperativa_livros_danilo/views/tela_chat.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_galeria.dart';

import 'package:app_cooperativa_livros_danilo/views/tela_home_inicial.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_login.dart';

import 'package:app_cooperativa_livros_danilo/views/tela_perfil.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_shop.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_web.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'componentes/drawer.dart';


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
      drawer: MenuLateral(),
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
        top: -15,
        curveSize: 70,
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
