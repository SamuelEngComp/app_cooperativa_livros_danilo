import 'package:app_cooperativa_livros_danilo/tela_perfil.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import '../pagina_home.dart';
import '../tela_login.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int selectedIndex = 0;

  @override
  void initState() {
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> paginas = [PaginaHome(), TelaPerfil()];



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

