import 'package:app_cooperativa_livros_danilo/componentes/bottom_navigator.dart';
import 'package:app_cooperativa_livros_danilo/dados/dummy_dados.dart';
import 'package:app_cooperativa_livros_danilo/models/livro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TelaPerfil extends StatefulWidget {


  @override
  _TelaPerfilState createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {

  List<Livro> livros = LIVROS;
  bool _filterSelectedBestSeller = false;
  bool _filterSelectedMisterio = false;
  bool _filterSelectedLancamento = false;

  @override
  void initState() {
    super.initState();
    _filterSelectedBestSeller = false;
    _filterSelectedMisterio = false;
    _filterSelectedLancamento = false;
  }

  @override
  Widget build(BuildContext context) {



    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: const [
                      Flexible(
                        flex: 0,
                        fit: FlexFit.loose,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFFD097FC),
                          child: CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage('assets/imagens/vegeta.jpeg'),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('Vegeta'),
                    ],
                  ),

                  const SizedBox(width: 30,),

                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10,0, 10, 0),
                            label: Text('Busque seu livro aqui'),
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FilterChip(
                              padding: EdgeInsets.zero,
                              label: Text('*Best seller',
                                style: _filterSelectedBestSeller ? TextStyle(color: Colors.black) : TextStyle(color: Colors.white),),
                              onSelected: (bool value){
                                setState(() {
                                  _filterSelectedBestSeller = value;
                                });
                              },
                              selected: _filterSelectedBestSeller,
                              showCheckmark: false,
                              backgroundColor: Color(0xFFD097FC),
                              selectedColor: Color(0xFFD097FC),
                            ),
                            SizedBox(width: 5,),
                            FilterChip(
                              padding: EdgeInsets.zero,
                              label: Text('*Mistério',
                              style: _filterSelectedMisterio ? TextStyle(color: Colors.black) : TextStyle(color: Colors.white),),
                              onSelected: (bool value){
                                setState(() {
                                  _filterSelectedMisterio = value;
                                });
                              },
                              selected: _filterSelectedMisterio,
                              showCheckmark: false,
                              backgroundColor: Color(0xFFD097FC),
                              selectedColor: Color(0xFFD097FC),
                            ),
                            SizedBox(width: 5,),
                            FilterChip(
                              padding: EdgeInsets.zero,
                              label: Text('*Lançamento',
                                style: _filterSelectedLancamento ? TextStyle(color: Colors.black,) : TextStyle(color: Colors.white),),
                              onSelected: (bool value){
                                setState(() {
                                  _filterSelectedLancamento = value;
                                });
                            },
                              selected: _filterSelectedLancamento,
                              showCheckmark: false,
                              backgroundColor: Color(0xFFD097FC),
                              selectedColor: Color(0xFFD097FC),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

                ],
        ),
      ),


            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text('TOP 10 LIVROS MAIS LIDOS DA SEMANA',
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
              child: Text('AVANÇOS DE LEITURA',
                style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 150,
              child: ListTile(
                title: Text('Jogada Mortal'),
              ),

            ),

              ],
            ),
          ),

    );
  }
}
