

import 'package:app_cooperativa_livros_danilo/models/usuarios_perfil.dart';
import 'package:flutter/material.dart';

class ChipsUsuarios extends StatefulWidget {


  @override
  _ChipsUsuariosState createState() => _ChipsUsuariosState();
}

class _ChipsUsuariosState extends State<ChipsUsuarios> {

  List<UsuariosPerfil> usuarios = [
    UsuariosPerfil(nome: 'Angelina Jolie', imagemAvatar: 'assets/imagens/angelinaJolie.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Bruxo Mito', imagemAvatar: 'assets/imagens/bruxo.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Cameron Diaz', imagemAvatar: 'assets/imagens/cameronDiaz.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'CR7 Ronaldo', imagemAvatar: 'assets/imagens/cr7.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Mano Brown', imagemAvatar: 'assets/imagens/mano.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Marcelo Latera', imagemAvatar: 'assets/imagens/marcelo.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Mariana Ximenes', imagemAvatar: 'assets/imagens/marianaXimenes.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Lionel Messi', imagemAvatar: 'assets/imagens/messi.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Neymar Jr', imagemAvatar: 'assets/imagens/neymar.png',selecionado:  false),

    UsuariosPerfil(nome: 'Bozo Peste', imagemAvatar: 'assets/imagens/bozo.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Dilmãe Dilma', imagemAvatar: 'assets/imagens/dilmae.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Kakaroto Goku', imagemAvatar: 'assets/imagens/goku.jpg',selecionado:  false),
    UsuariosPerfil(nome: 'Lula Livre', imagemAvatar: 'assets/imagens/lula.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Moro Dallanol', imagemAvatar: 'assets/imagens/moro.jpg',selecionado:  false),
    UsuariosPerfil(nome: 'Vegeta Verme', imagemAvatar: 'assets/imagens/vegeta.jpeg',selecionado:  false),
  ];

  bool selected = false;


  @override
  Widget build(BuildContext context) {
    return Wrap(
          spacing: 10,
          runSpacing: 12,
          direction: Axis.horizontal,
          children: listaDeUsers(),
        );
  }

  List<Widget> listaDeUsers(){
    List<Widget> lista = [];
    for (int i=0; i< usuarios.length; i++) {
      Widget item = Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            top: 110,
            child: Text(
              usuarios[i].nome,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:30, right: 20, top: 20, bottom: 30),
            child: Stack(
              alignment: Alignment.center,
              children: [

                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40.0,
                  backgroundImage: AssetImage(usuarios[i].imagemAvatar),
                ),

                Positioned(
                  left: 62,
                  bottom: 0,
                  top: 60,
                    child: ClipOval(
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(45),

                        ),
                      ),
                    ),
                ),

                Positioned(
                  left: 50,
                  bottom: 0,
                  top: 50,
                  child: IconButton(
                    onPressed: (){
                      setState(() {
                        usuarios[i].selecionado = !selected;
                      });
                    },
                    icon: Icon(usuarios[i].selecionado ?Icons.check : Icons.add),
                  ),
                ),


            ],
          ),
          ),
        ],
      );

      lista.add(item);
    }
    return lista;
  }
}
