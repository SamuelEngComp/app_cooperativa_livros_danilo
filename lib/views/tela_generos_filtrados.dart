
import 'package:app_cooperativa_livros_danilo/dados/dummy_dados.dart';
import 'package:app_cooperativa_livros_danilo/models/livro.dart';
import 'package:flutter/material.dart';

class TelaGenerosFiltrados extends StatelessWidget {

  List<Livro> livros = LIVROS;


  @override
  Widget build(BuildContext context) {

    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title:Image.asset('assets/imagens/iconeLivro.png'),
          centerTitle: true,
          actions: const [
            Icon(Icons.search, color: Colors.white,),
          ],
          backgroundColor: const Color(0xFFD097FC),
        ),
      body: Container(
        height: altura,
        width: largura,
        child: ListView(
          children: [
            Row(
              children: const [
                Padding(
                    padding: EdgeInsets.all(20),
                child: Text('Ação'),),
              ],
            ),

            Wrap(
              spacing: 10,
              runSpacing: -100,
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              children: listaDeGenerosFiltrados(),
            ),

        ],
        ),
      ),
    );
  }

  //a ideia é receber o genero e filtrar
  List<Widget> listaDeGenerosFiltrados(){

    List<Widget> livrosFiltrados = [];

    for(int i=0; i<livros.length; i++){
      Widget coluna = Container(
        height: 250,
          width: 100,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(livros[i].urlImage, height: 100,),
              Container(
                height: 10,
                child: Text(livros[i].titulo,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),),
              ),

            ],
          ),
      );
      livrosFiltrados.add(coluna);
    }

    return livrosFiltrados;
  }


}
