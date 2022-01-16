import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FiltroPerfil extends StatefulWidget {


  @override
  State<FiltroPerfil> createState() => _FiltroPerfilState();
}

class _FiltroPerfilState extends State<FiltroPerfil> {
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

    return  GridView.builder(
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
                  if(generosEscolhidos.contains(generos[index])){
                    generosEscolhidos.remove(generos[index]);
                  }else{
                    generosEscolhidos.add(generos[index]);
                  }
                }
                print(generosEscolhidos);
              });
            },
            child: generos[index],
            style: ButtonStyle(
              backgroundColor:generosEscolhidos.contains(generos[index])?MaterialStateProperty.all<Color>(Colors.black):
              MaterialStateProperty.all<Color>(Color(0xFFBDA8FC)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))),
            ),
          ),
        );
      },
      itemCount: generos.length,
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
