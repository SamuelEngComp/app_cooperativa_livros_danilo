
import 'package:app_cooperativa_livros_danilo/models/generos_livros.dart';
import 'package:flutter/material.dart';

import 'dados/dummy_dados.dart';

class ChipsFiltros extends StatefulWidget {


  @override
  _ChipsFiltrosState createState() => _ChipsFiltrosState();
}

class _ChipsFiltrosState extends State<ChipsFiltros> {

  List<GenerosLivros> nomeDosGeneros = GENEROS;

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
