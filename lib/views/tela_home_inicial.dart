import 'package:app_cooperativa_livros_danilo/dados/dummy_dados.dart';
import 'package:app_cooperativa_livros_danilo/models/livro.dart';
import 'package:flutter/material.dart';

class TelaHomeInicial extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;

    List<Livro> livros = LIVROS;

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SUA BIBLIOTECA'),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: livros.length,
                    itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.all(5),
                        child: Card(
                          child: Image.asset(livros[index].urlImage, fit: BoxFit.cover,),
                          elevation: 10,
                        ),


                      );
                    }),
              ),

              Text('RECOMENDAÇÕES'),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: livros.length,
                    itemBuilder: (context, index){
                      return Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.all(10),
                        child: Image.asset(livros[index].urlImage),
                      );
                    }),
              ),

              Text('O QUE OS SEUS AMIGOS ESTÃO LENDO'),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: livros.length,
                    itemBuilder: (context, index){
                      return Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.all(10),
                        child: Image.asset(livros[index].urlImage),
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
