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
        height: altura,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 120,
              child: Card(
                child: Wrap(
                  children: [
                    Image.asset(livros[0].urlImage, width: 100, height: 200,),
                    ListTile(
                      title: Text(livros[0].genero),
                    ),
                  ],
                ),

              ),
            ),
            Container(
              width: 120,
              child: Card(
                child: Wrap(
                  children: [
                    Image.asset(livros[0].urlImage, width: 100, height: 200,),
                    ListTile(
                      title: Text(livros[0].genero),
                    ),
                  ],
                ),

              ),
            ),
            Container(
              width: 120,
              child: Card(
                child: Wrap(
                  children: [
                    Image.asset(livros[0].urlImage, width: 100, height: 200,),
                    ListTile(
                      title: Text(livros[0].genero),
                    ),
                  ],
                ),

              ),
            ),
            Container(
              width: 120,
              child: Card(
                child: Wrap(
                  children: [
                    Image.asset(livros[0].urlImage, width: 100, height: 200,),
                    ListTile(
                      title: Text(livros[0].genero),
                    ),
                  ],
                ),

              ),
            ),
            Container(
              width: 120,
              child: Card(
                child: Wrap(
                  children: [
                    Image.asset(livros[0].urlImage, width: 100, height: 200,),
                    ListTile(
                      title: Text(livros[0].genero),
                    ),
                  ],
                ),

              ),
            ),
            Container(
              width: 120,
              child: Card(
                child: Wrap(
                  children: [
                    Image.asset(livros[0].urlImage, width: 100, height: 200,),
                    ListTile(
                      title: Text(livros[0].genero),
                    ),
                  ],
                ),

              ),
            ),
            Container(
              width: 120,
              child: Card(
                child: Wrap(
                  children: [
                    Image.asset(livros[0].urlImage, width: 100, height: 200,),
                    ListTile(
                      title: Text(livros[0].genero),
                    ),
                  ],
                ),

              ),
            ),
            Container(
              width: 120,
              child: Card(
                child: Wrap(
                  children: [
                    Image.asset(livros[0].urlImage, width: 100, height: 200,),
                    ListTile(
                      title: Text(livros[0].genero),
                    ),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),

    );
  }
}
