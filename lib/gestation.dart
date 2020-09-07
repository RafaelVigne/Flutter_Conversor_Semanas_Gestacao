import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gestation/result.dart';
import 'package:flutter/services.dart';




class gestation extends StatefulWidget {
  @override
  _gestationState createState() => _gestationState();
}

class _gestationState extends State<gestation> {
  TextEditingController semanaController = TextEditingController();
  final key = GlobalKey<ScaffoldState>();
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomInset : false,
            resizeToAvoidBottomPadding: false,
            key: key,
            body: Center(

                child: Container(
                    constraints: BoxConstraints.expand(),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/images_bkc.jpg"),
                            fit: BoxFit.cover)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 160),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text("Semanas",
                        style: new TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient,)),
                          SizedBox(height: 10,),
                          TextField(
                            maxLength: 2,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.pinkAccent
                            ),
                            controller: semanaController,
                            decoration: InputDecoration(
                                hintText: '',
                                border: InputBorder.none,
                                counterText: ''
                            ),
                          ),
                          ButtonTheme(
                              minWidth: 300,
                              child: RaisedButton(
                                child: Text("CALCULAR", style: TextStyle(fontSize: 15, letterSpacing: 3),),
                                color: Colors.pinkAccent.withOpacity(0.40),
                                textColor: Colors.white,
                                onPressed: (){
                                  String  textToSend = semanaController.text;
                                  if (semanaController.text.isEmpty){
                                    key.currentState.showSnackBar(SnackBar(
                                      content: Text('Semanas obrigatório', style: TextStyle(fontSize: 15),),
                                    ));
                                  } else if (int.parse(textToSend) > 42){
                                    key.currentState.showSnackBar(SnackBar(
                                      content: Text('Máximo: 42 semanas', style: TextStyle(fontSize: 15),),
                                    ));
                                  }else {
                                    Navigator.push(context, MaterialPageRoute(builder:(context) => result(text: textToSend),
                                    ));
                                  }
                                },
                              )
                          ),
                          ButtonTheme(
                              minWidth: 300,
                              child: RaisedButton(

                                child: Text("LIMPA", style: TextStyle(fontSize: 15, letterSpacing: 3),),
                                color: Colors.pinkAccent.withOpacity(0.40),
                                textColor: Colors.white,
                                onPressed: () => semanaController.clear(),
                              )
                          )
                        ],
                      ),
                    )
                )
            )

        )
    );
  }
}
