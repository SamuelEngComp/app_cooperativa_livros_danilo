import 'package:app_cooperativa_livros_danilo/chips_filtros.dart';
import 'package:app_cooperativa_livros_danilo/tela_montar_perfil_users.dart';
import 'package:flutter/material.dart';

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


    return Scaffold(
      appBar: AppBar(
          title:Image.asset('assets/imagens/iconeLivro.png'),
          centerTitle: true,
          actions: [
            Padding(padding: EdgeInsets.all(8),
              child: IconButton(
                onPressed: (){
                    Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TelaMontarPerfilUsers()));
                },
                icon: Icon(Icons.save, color: Colors.white,),),
            ),
            //Padding(padding: EdgeInsets.all(8),
            //  child: Icon(Icons.search, color: Colors.white,),
           // ),

          ],
          backgroundColor: Color(0xFFD097FC),
      ),
      body: Container(
        width: largura,
        height: altura,
        child: ListView(
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
          child: ChipsFiltros(),
        ),
            ],
          ),
        ),
    );
  }
}
