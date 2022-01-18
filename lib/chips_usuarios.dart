
import 'package:app_cooperativa_livros_danilo/models/usuarios_perfil.dart';
import 'package:flutter/material.dart';

class ChipsUsuarios extends StatefulWidget {


  @override
  _ChipsUsuariosState createState() => _ChipsUsuariosState();
}

class _ChipsUsuariosState extends State<ChipsUsuarios> {

  List<UsuariosPerfil> usuarios = [
    UsuariosPerfil(nome: 'Angelina', imagemAvatar: 'assets/imagens/angelinaJolie.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Bruxo', imagemAvatar: 'assets/imagens/bruxo.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Cameron', imagemAvatar: 'assets/imagens/cameronDiaz.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'CR7', imagemAvatar: 'assets/imagens/cr7.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Mano', imagemAvatar: 'assets/imagens/mano.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Marcelo', imagemAvatar: 'assets/imagens/marcelo.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Mariana', imagemAvatar: 'assets/imagens/marianaXimenes.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Messi', imagemAvatar: 'assets/imagens/messi.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Neymar', imagemAvatar: 'assets/imagens/neymar.png',selecionado:  false),

    UsuariosPerfil(nome: 'Bozo', imagemAvatar: 'assets/imagens/bozo.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Dilmãe', imagemAvatar: 'assets/imagens/dilmae.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Goku', imagemAvatar: 'assets/imagens/goku.jpg',selecionado:  false),
    UsuariosPerfil(nome: 'Lula', imagemAvatar: 'assets/imagens/lula.jpeg',selecionado:  false),
    UsuariosPerfil(nome: 'Moro', imagemAvatar: 'assets/imagens/moro.jpg',selecionado:  false),
    UsuariosPerfil(nome: 'Vegeta', imagemAvatar: 'assets/imagens/vegeta.jpeg',selecionado:  false),
  ];

  bool selected = false;


  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      direction: Axis.horizontal,
      children: listaDeUsers(),
    );
  }

  List<Widget> listaDeUsers(){
    List<Widget> lista = [];
    for (int i=0; i< usuarios.length; i++) {
      Widget item = Stack(
        textDirection: TextDirection.ltr,
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            top: 90,
            child: Text(
              usuarios[i].nome,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10, right: 5, top: 10, bottom: 20),
            child: Stack(
              textDirection: TextDirection.ltr,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40.0,
                  backgroundImage: AssetImage(usuarios[i].imagemAvatar),
                ),

                Positioned(
                  left: 50,
                  bottom: 0,
                  top: 50,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.add),
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
