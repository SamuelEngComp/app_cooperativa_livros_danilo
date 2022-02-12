import 'package:flutter/material.dart';

class TelaGaleria extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;
    String numeroPagina = 'Pág. 11';


    return SingleChildScrollView(
      child: Container(
          width: largura,
          height: altura,
          child: Column(
            children: [
              ListTile(
                title: Text('FICA COMIGO'),
                subtitle: Text('Harlan Coben'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.translate),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.format_color_text),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.border_color),
                  ),

                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Switch(value: true, onChanged: null),
                      Text('Modo noturno', style: TextStyle(fontSize: 9),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Container(
                width: largura*0.95,
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD097FC),),
                ),
                child: Text('Lorem ipsum dolor sit amet, '
                    'consectetur adipiscing elit, sed do eiusmod tempor '
                    'incididunt ut labore et dolore magna aliqua. Ut enim '
                    'ad minim veniam, quis nostrud exercitation ullamco '
                    'laboris nisi ut aliquip ex ea commodo consequat. '
                    'Duis aute irure dolor in reprehenderit in voluptate '
                    'velit esse cillum dolore eu fugiat nulla pariatur. ]'
                    'Excepteur sint occaecat cupidatat non proident, '
                    'sunt in culpa qui officia deserunt mollit anim id est '
                    'laborum. '
                    'Lorem ipsum dolor sit amet, '
                    'consectetur adipiscing elit, sed do eiusmod tempor '
                    'incididunt ut labore et dolore magna aliqua. Ut enim '
                    'ad minim veniam, quis nostrud exercitation ullamco '
                    'laboris nisi ut aliquip ex ea commodo consequat. '
                    'Duis aute irure dolor in reprehenderit in voluptate '
                    'velit esse cillum dolore eu fugiat nulla pariatur. ]'
                    'Excepteur sint occaecat cupidatat non proident, '
                    'sunt in culpa qui officia deserunt mollit anim id est '
                    'laborum.'
                    'Lorem ipsum dolor sit amet, '
                    'consectetur adipiscing elit, sed do eiusmod tempor '
                    'incididunt ut labore et dolore magna aliqua. Ut enim '
                    'ad minim veniam, quis nostrud exercitation ullamco '
                    'laboris nisi ut aliquip ex ea commodo consequat. '
                    'Duis aute irure dolor in reprehenderit in voluptate '
                    'velit esse cillum dolore eu fugiat nulla pariatur. ]'
                    'Excepteur sint occaecat cupidatat non proident, '
                    'sunt in culpa qui officia deserunt mollit anim id est '
                    'laborum. \n \n $numeroPagina',),
              ),
            ],
          ),
      ),
    );
  }
}
