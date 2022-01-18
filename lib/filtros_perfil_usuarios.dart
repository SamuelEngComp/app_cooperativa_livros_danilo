import 'package:flutter/material.dart';

class FiltroPerfilUsuario extends StatefulWidget {


  @override
  _FiltroPerfilUsuarioState createState() => _FiltroPerfilUsuarioState();
}

class _FiltroPerfilUsuarioState extends State<FiltroPerfilUsuario> {

  List<Widget> pessoas = [Text('Ação', style: TextStyle(color: Colors.white),),
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

  late Set<Widget> generosEscolhidos = {};
  bool isSelected = false;

  @override
  void initState() {
    isSelected = false;
    generosEscolhidos = {};
  }





  @override
  Widget build(BuildContext context) {

    double largura = MediaQuery.of(context).size.width;
    isSelected = false;


    return GridView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                isSelected = !isSelected;
                if(isSelected){
                  if(generosEscolhidos.contains(pessoas[index])){
                    generosEscolhidos.remove(pessoas[index]);
                  }else{
                    generosEscolhidos.add(pessoas[index]);
                  }
                }
                print(generosEscolhidos);
              });
            },
            child: pessoas[index],
            style: ButtonStyle(
              backgroundColor:generosEscolhidos.contains(pessoas[index])?MaterialStateProperty.all<Color>(Colors.black):
              MaterialStateProperty.all<Color>(Color(0xFFBDA8FC)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))),
            ),
          ),
        );
      },
      itemCount: pessoas.length,
      padding: EdgeInsets.all(8),
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: largura < 500 ? 3: 4,
        childAspectRatio: 4,
        mainAxisExtent: 40,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      //mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
