import 'package:app_cooperativa_livros_danilo/dados/dummy_dados.dart';
import 'package:app_cooperativa_livros_danilo/models/livro.dart';
import 'package:flutter/material.dart';

class TelaHomeInicial extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    List<Livro> livros = LIVROS;

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
                child: Text('SUA BIBLIOTECA',
                  style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: livros.length,
                    itemBuilder: (context, index){
                      return Row(
                        children: [
                          SizedBox(
                            height: 160,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(livros[index].urlImage, height: 100,),
                                  Text(livros[index].genero, overflow: TextOverflow.visible, textAlign: TextAlign.center,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Text('RECOMENDAÇÕES',
                  style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: livros.length,
                    itemBuilder: (context, index){
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 160,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(livros[index].urlImage, height: 100,),
                                  Text(livros[index].titulo, overflow: TextOverflow.visible, textAlign: TextAlign.center,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Text('O QUE O SEUS AMIGOS ESTÃO LENDO',
                  style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: livros.length,
                    itemBuilder: (context, index){
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 160,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(livros[index].urlImage, height: 100,),
                                  Text(livros[index].titulo, overflow: TextOverflow.visible, textAlign: TextAlign.center,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
