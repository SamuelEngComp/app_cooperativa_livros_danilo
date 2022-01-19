import 'package:app_cooperativa_livros_danilo/tela_login.dart';
import 'package:flutter/material.dart';

class TelaCadastroUser extends StatefulWidget {


  @override
  _TelaCadastroUserState createState() => _TelaCadastroUserState();
}

class _TelaCadastroUserState extends State<TelaCadastroUser> {
  bool isChecked = false;
  bool _visiblePassword =  false;
  bool _visibleConfirmPassword = false;

  @override
  void initState() {
    _visiblePassword = false;
    _visibleConfirmPassword = false;
  }

  @override
  Widget build(BuildContext context) {

    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title:Image.asset('assets/imagens/iconeLivro.png'),
        centerTitle: true,
        actions: [
          Icon(Icons.search, color: Colors.white,),
        ],
        backgroundColor: Color(0xFFD097FC),
      ),
      body: Container(
        width: largura,
        height: altura,
        child: ListView(
          children: [
            Container(
              width: largura*0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: ListTile(
                      title: Text('\nCadastro \n',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      subtitle: Text('Realize o preenchimento dos campos abaixo para se cadastrar e usufruir de todos os beneficios do ...'),
                    ),
                  ),

                  Container(
                    width: largura*0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Nome de usuário',
                            suffixIcon: Icon(Icons.people),
                            contentPadding: EdgeInsets.all(8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.email),
                            hintText: 'E-mail',
                            contentPadding: EdgeInsets.all(8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !_visiblePassword,
                          decoration: InputDecoration(
                            hintText: 'Senha',
                            contentPadding: EdgeInsets.all(8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _visiblePassword? Icons.visibility: Icons.visibility_off
                              ),
                              onPressed: (){
                                setState(() {
                                  _visiblePassword = !_visiblePassword;
                                });
                              },
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !_visibleConfirmPassword,
                          decoration: InputDecoration(
                            hintText: 'Confirmação de senha',
                            contentPadding: EdgeInsets.all(8.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  _visibleConfirmPassword? Icons.visibility: Icons.visibility_off
                              ),
                              onPressed: (){
                                setState(() {
                                  _visibleConfirmPassword = !_visibleConfirmPassword;
                                });
                              },
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (bool? value){
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                                Text('Eu concordo com os termos de uso '),
                              ],

                            ),


                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => TelaLogin()));
                              },
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(1, 12, 1, 12),
                                child: Text(
                                  'Registrar',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color(0xFFBDA8FC)),

                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),




                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
