import 'package:flutter/material.dart';

class TelaMontarPerfil extends StatefulWidget {


  @override
  _TelaMontarPerfilState createState() => _TelaMontarPerfilState();
}

class _TelaMontarPerfilState extends State<TelaMontarPerfil> {
  
  

  @override
  Widget build(BuildContext context) {

    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    List<Widget> generos = [Text('Ação', style: TextStyle(color: Colors.white),),
      Text('Aventura', style: TextStyle(color: Colors.white),), Text('Clássicos', style: TextStyle(color: Colors.white),),
      Text('Comédia', style: TextStyle(color: Colors.white),), Text('Contos', style: TextStyle(color: Colors.white),),
    Text('Drama', style: TextStyle(color: Colors.white),), Text('Espiritual', style: TextStyle(color: Colors.white),),
      Text('Fantasia', style: TextStyle(color: Colors.white),), Text('Ficção Cientifica', style: TextStyle(color: Colors.white),),
      Text('Ficção histórica', style: TextStyle(color: Colors.white),), Text('Humor', style: TextStyle(color: Colors.white),),
      Text('Mistério', style: TextStyle(color: Colors.white),), Text('Não ficção', style: TextStyle(color: Colors.white),),
      Text('Paranormal', style: TextStyle(color: Colors.white),), Text('Poesia', style: TextStyle(color: Colors.white),),
      Text('Romance', style: TextStyle(color: Colors.white),), Text('Suspense', style: TextStyle(color: Colors.white),),
    Text('Terror', style: TextStyle(color: Colors.white),), Text('Fanfic', style: TextStyle(color: Colors.white),),
      Text('Outros', style: TextStyle(color: Colors.white),)];
    
    return Scaffold(
      appBar: AppBar(
          title:Image.asset('assets/imagens/iconeLivro.png'),
          centerTitle: true,
          actions: [
            Padding(padding: EdgeInsets.all(8),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.save, color: Colors.white,),),
            ),
            Padding(padding: EdgeInsets.all(8),
              child: Icon(Icons.search, color: Colors.white,),
            ),


          ],
          backgroundColor: Color(0xFFD097FC),
      ),
      body: Container(
        width: largura,
        height: altura,
        child: Column(
            children: [
              Container(
                width: largura * 0.9,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
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
                ),


              Container(
                height: altura/2,
                width: largura * 0.9,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: (){},
                            child: generos[0],
                            style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all<Color>(
                                  Color(0xFFBDA8FC)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0))),
                            ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[1],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[2],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),

                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[3],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),

                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: generos[4],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[5],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[6],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),

                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[7],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),

                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: generos[8],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[9],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[10],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),

                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: generos[11],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[12],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[13],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),

                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),


                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: generos[14],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[15],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[16],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),

                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: generos[17],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[18],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[19],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),

                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                        SizedBox(width: 5,),

                        ElevatedButton(
                          onPressed: (){},
                          child: generos[19],
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(
                                Color(0xFFBDA8FC)),

                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                          ),
                        ),

                      ],
                    ),
                  ],


                ),

                  /*
                  GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(15),
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    crossAxisCount: 4,
                    children: generos,
                  ),*/
              ),




            ],
          ),
        ),
    );
  }
}
