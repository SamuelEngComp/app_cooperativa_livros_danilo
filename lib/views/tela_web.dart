import 'package:flutter/material.dart';

class TelaWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;

    print('largura: $largura');

    bool selecionado = false;

    return Container(
      width: largura,
      height: altura,
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        label: Text('Busque seu livro aqui'),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                ),
              ),

              SizedBox(width: 20,),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.people_alt_outlined),
                ),
              ),

              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.email_outlined),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                flex: 0,
                fit: FlexFit.loose,
                child: Column(
                  children: [
                    Stack(
                      children:[
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Color(0xFFD097FC),
                          child: CircleAvatar(
                            radius: 26,
                            backgroundImage: AssetImage('assets/imagens/vegeta.jpeg'),
                          ),
                        ),

                        Positioned(
                          left: 25,
                          bottom: 0,
                          top: 25,
                          child: FilterChip(
                            padding: EdgeInsets.only(right: 10),
                            backgroundColor: Colors.white,
                            selectedColor: Colors.white,
                            showCheckmark: false,
                            selected: selecionado,
                            onSelected: (bool value ){},
                            label: Icon(selecionado ? Icons.check : Icons.add),

                          ),
                        ),
                      ],
                    ),
                    Text('Seu Story'),
                  ],
                ),
              ),

              Flexible(
                flex: 0,
                fit: FlexFit.loose,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Color(0xFFD097FC),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage('assets/imagens/angelinaJolie.jpeg'),
                  ),
                ),
              ),

              Flexible(
                flex: 0,
                fit: FlexFit.loose,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Color(0xFFD097FC),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage('assets/imagens/bruxo.jpeg'),
                  ),
                ),
              ),

              Flexible(
                flex: 0,
                fit: FlexFit.loose,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Color(0xFFD097FC),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage('assets/imagens/mano.jpeg'),
                  ),
                ),
              ),

              Flexible(
                flex: 0,
                fit: FlexFit.loose,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Color(0xFFD097FC),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage('assets/imagens/messi.jpeg'),
                  ),
                ),
              ),

              Flexible(
                flex: 0,
                fit: FlexFit.loose,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Color(0xFFD097FC),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage('assets/imagens/goku.jpg'),
                  ),
                ),
              ),

            ],
          ),

          Expanded(
            flex: 2,
            child: ListView(
                  children: [
                    SizedBox(height: 30,),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 27,
                        backgroundColor: Color(0xFFD097FC),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundImage: AssetImage('assets/imagens/mano.jpeg'),
                        ),
                      ),
                      title: Text('Lê Livros'),
                      trailing: Text('12 h'),
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            width: largura * .8,
                            child: Image.asset('assets/imagens/mano.jpeg',),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                        // Positioned(
                        //     child: ElevatedButton(
                        //       child: Text('COMPRAR', style: TextStyle(color: Colors.white),),
                        //       onPressed: (){},
                        //     ),),
                      ],
                    ),

                    SizedBox(height: 30,),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 27,
                        backgroundColor: Color(0xFFD097FC),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundImage: AssetImage('assets/imagens/neymar.png'),
                        ),
                      ),
                      title: Text('Arthur'),
                      trailing: Text('12 h'),
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            width: largura * .8,
                            child: Image.asset('assets/imagens/goku.jpg'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30,),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 27,
                        backgroundColor: Color(0xFFD097FC),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundImage: AssetImage('assets/imagens/mano.jpeg'),
                        ),
                      ),
                      title: Text('Lê Livros'),
                      trailing: Text('12 h'),
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            width: largura * .8,
                            child: Image.asset('assets/imagens/mano.jpeg'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30,),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 27,
                        backgroundColor: Color(0xFFD097FC),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundImage: AssetImage('assets/imagens/mano.jpeg'),
                        ),
                      ),
                      title: Text('Lê Livros'),
                      trailing: Text('12 h'),
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            width: largura * .8,
                            child: Image.asset('assets/imagens/mano.jpeg'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          ),
        ],
      ),
    );
  }
}
