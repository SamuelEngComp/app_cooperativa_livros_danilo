import 'package:app_cooperativa_livros_danilo/views/tela_chat.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_galeria.dart';

import 'package:app_cooperativa_livros_danilo/views/tela_home_inicial.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_login.dart';

import 'package:app_cooperativa_livros_danilo/views/tela_perfil.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_shop.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_web.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'componentes/bottom_navigator.dart';
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
      appBar: selectedIndex != 1 ? AppBar(
        title:Image.asset('assets/imagens/iconeLivro.png'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 15, 10),
            child: Icon(Icons.search, color: Colors.white),
          ),
        ],
        backgroundColor: const Color(0xFFD097FC),
      ): null,
      body: paginas[selectedIndex],
      drawer: MenuLateral(),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: const ImageIcon(AssetImage('assets/imagens/silhueta-negra-de-casa-sem-porta.png'),
              size: 25, color: Colors.black), title: (selectedIndex == 0) ?'Home':''),
          TabItem(icon: const ImageIcon(AssetImage('assets/imagens/do-utilizador.png'),
              size: 25, color: Colors.black), title: (selectedIndex == 1) ? 'Perfil': ''),
          TabItem(icon: const ImageIcon(AssetImage('assets/imagens/pilha-de-tres-livros.png'),
              size: 25, color: Colors.black), title: (selectedIndex == 2) ? 'Galeria': ''),
          TabItem(icon: const ImageIcon(AssetImage('assets/imagens/earth-with-a-book.png'),
              size: 25, color: Colors.black), title: (selectedIndex == 3) ?'Web':''),
          TabItem(icon: const ImageIcon(AssetImage('assets/imagens/chat-box.png'),
              size: 25, color: Colors.black), title: (selectedIndex == 4) ? 'Chat': ''),
          TabItem(icon: const ImageIcon(AssetImage('assets/imagens/shopping-cart-with-product-inside.png'),
              size: 25, color: Colors.black), title: (selectedIndex == 5) ? 'Shop':''),
        ],
        elevation: 5,
        top: -20,
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
