

import 'package:app_cooperativa_livros_danilo/dados/dummy_dados.dart';
import 'package:app_cooperativa_livros_danilo/models/usuarios_perfil.dart';
import 'package:flutter/material.dart';

class ChipsUsuarios extends StatefulWidget {


  @override
  _ChipsUsuariosState createState() => _ChipsUsuariosState();
}

class _ChipsUsuariosState extends State<ChipsUsuarios> {

  List<UsuariosPerfil> usuarios = USUARIOS;


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
                        width: 20,
                        height: 20,
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
                  child: FilterChip(
                    padding: EdgeInsets.only(right: 10),
                    backgroundColor: Colors.white,
                    selectedColor: Colors.white,
                    showCheckmark: false,

                    selected: usuarios[i].selecionado,
                    onSelected: (bool value) {
                      setState(() {
                        usuarios[i].selecionado = value;
                      });
                    },
                    label: Icon(usuarios[i].selecionado ? Icons.check : Icons.add),

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
