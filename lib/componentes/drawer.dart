import 'package:app_cooperativa_livros_danilo/views/tela_generos_filtrados.dart';
import 'package:app_cooperativa_livros_danilo/views/tela_login.dart';
import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Center(
              child: Row(
                children: [
                  const Text('NAVEGAR'),
                  const SizedBox(width: 30,),
                  SizedBox(
                    child: Image.asset('assets/imagens/logoSemFundo.png',
                      width: 150,height: 150,),
                  ),
                ],
              ),
            ),
          ),

          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('AÇÃO'),
            hoverColor: Color.fromRGBO(189,168,252, 1),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('AÇÃO')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('AVENTURA'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('AVENTURA')));
            },
          ),
          ListTile(
            focusColor: Color.fromRGBO(189,168,252, 1),
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('CLÁSSICOS'),
            textColor: Color.fromRGBO(189,168,252, .9),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('CLÁSSICOS')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('COMÉDIA'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('COMÉDIA')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('CONTOS'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('CONTOS')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('DRAMA'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('DRAMA')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('ESPIRITUAL'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('ESPIRITUAL')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('FANTASIA'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('FANTASIA')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('FICÇÃO CINETÍFICA'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('FICÇÃO CINETÍFICA')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('FICÇÃO HISTÓRICA'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('FICÇÃO HISTÓRICA')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('HUMOR'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('HUMOR')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('MISTÉRIO'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('MISTÉRIO')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('NÃO FICÇÃO'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('NÃO FICÇÃO')));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_rounded),
            title: const Text('PARANORMAL'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaGenerosFiltrados('PARANORMAL')));
            },
          ),
          const Divider(
            height: 20,
            color: Color(0xFFD097FC),
          ),
          ListTile(
            trailing: Icon(Icons.logout),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaLogin()));
              },
            title: const Text('SAIR'),
          ),
        ],
      ),
    );
  }
}
