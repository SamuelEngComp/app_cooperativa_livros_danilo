
import 'package:app_cooperativa_livros_danilo/models/generos_livros.dart';
import 'package:flutter/material.dart';

class ChipsFiltros extends StatefulWidget {


  @override
  _ChipsFiltrosState createState() => _ChipsFiltrosState();
}

class _ChipsFiltrosState extends State<ChipsFiltros> {

  List<GenerosLivros> nomeDosGeneros = [
    GenerosLivros(nomeDoGenero: 'Ação', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Aventura', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Clássicos', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Comédia', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Contos', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Drama', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Espiritual', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Fantasia', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Ficção Científica', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Ficção Histórica', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Humor', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Mistério', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Não ficção', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Paranormal', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Poesia', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Romance', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Suspense', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Terror', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Fanfic', selecionado: false),
    GenerosLivros(nomeDoGenero: 'Outros', selecionado: false),

  ];

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 8,
        direction: Axis.horizontal,
        children: listaDeChips(),
    );
  }

  List<Widget> listaDeChips(){
    List<Widget> lista = [];
    for (int i=0; i< nomeDosGeneros.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left:10, right: 5),
        child: FilterChip(
          label: Text(nomeDosGeneros[i].nomeDoGenero),
          labelStyle: TextStyle(color: Colors.white),
          backgroundColor: Color(0xFFBDA8FC),
          selected: nomeDosGeneros[i].selecionado,
          onSelected: (bool value)
          {
            setState(() {
              nomeDosGeneros[i].selecionado = value;
            });
          },
        ),
      );
      lista.add(item);
    }
    return lista;
  }


}
