import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class result extends StatelessWidget {
  final String text;
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  result({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    var semana = int.parse(text);
    String mes = '';
    String tamanho = '';
    String info = '';
    var imagem = '';

    if (semana >= 0 && semana <= 4) {
      mes = '1° Mês';
      tamanho = '1mm';
      info =
          'Nesse período, o embriãozinho está medindo cerca de 1 mm (do tamanho da cabeça de um alfinete metálico) e diversas estruturas importantes estão em pleno processo de formação, como por exemplo: o sistema nervoso central, músculos, ossos, olhos, ouvido, coração, fígado e os brotos dos membros superiores e inferiores. Agora ele está dentro do seu saco gestacional, que é a membrana que envolve e protege o embrião.';
      imagem = 'assets/images/mes_01.png';
    } else if (semana >= 5 && semana <= 8) {
      mes = '2° Mês';
      tamanho = '14 a 20mm';
      info =
          'Com quase o tamanho de uma azeitona verde, é quando se completa o desenvolvimento do embrião e tem início a fase fetal. A velocidade do crescimento começa a aumentar e já é possível identificar os traços do rostinho: olhos, nariz e lábio superior. As estruturas dos ouvidos continuam se formando na lateral da cabeça. As placas dentárias começam a se formar.';
      imagem = 'assets/images/mes_02.png';
    } else if (semana >= 9 && semana <= 12) {
      mes = '3° Mês';
      tamanho = '42 a 61mm';
      info =
          'A estrutura cartilaginosa do corpo do bebê estão se transformando em ossos. Os órgãos genitais estão começando a se distinguir e em breve será possível identificar o sexo. Os rins começam a produzir urina e o intestino está totalmente dentro do abdômen, não se comunicando mais com o cordão umbilical.';
      imagem = 'assets/images/mes_03.png';
    } else if (semana >= 13 && semana <= 16) {
      mes = '4° Mês';
      tamanho = '90 a 103mm';
      info =
          'Ele tem o tamanho de um sabonete e seu peso, aproximadamente, é de 50g. As sobrancelhas ficam mais definidas e o cabelo continua a aparecer e a crescer. A pele ainda é bem fina, com vasos bem visíveis. Os braços têm flexão de ombro e pulsos, as mãos podem se abrir e fechar de vez em quando. As impressões digitais dos pés e das mãos começam a se formar.';
      imagem = 'assets/images/mes_04.png';
    } else if (semana >= 17 && semana <= 21) {
      mes = '5° Mês';
      tamanho = '14 a 16cm';
      info =
          'Seu bebê agora pode ouvir e sentir o som da sua voz e outros também. Os olhos ficam sensíveis à luz e ele é capaz de responder com movimentos ativos a estímulos externos. Com 20 semanas, temos um feto mais proporcional, que ouve sons, os batimentos cardíacos da mãe, reage à claridade e se movimenta voluntariamente.';
      imagem = 'assets/images/mes_05.png';
    } else if (semana >= 22 && semana <= 26) {
      mes = '6° Mês';
      tamanho = '21 a 23cm';
      info =
          'O feto está ganhando peso rapidamente e deve estar medindo (da cabeça ao bumbum) em torno de 21cm, do tamanho de um melão amarelo, e pesando 540g. Todos os seus sistemas estão avançando no crescimento e desenvolvimento. Ele escuta praticamente tudo à sua volta e consegue diferenciar os sons, inclusive vozes. Ele tem movimentos respiratórios, mas ainda não existe ar em seus pulmões.';
      imagem = 'assets/images/mes_06.png';
    } else if (semana >= 27 && semana <= 30) {
      mes = '7° Mês';
      tamanho = '35 a 38cm';
      info =
          'Com 28 semanas, o feto tem uma medida total de aproximadamente 35cm, do tamanho de uma raquete de frecobol ou uma frigideira simples, e pesa em torno de 1.100g. Seus órgãos estão todos formados, e agora estão apenas se aperfeiçoando. Os sistemas nervoso, digestivo e respiratório seguem em processo de amadurecimento para enfrentar o mundo lá fora.';
      imagem = 'assets/images/mes_07.png';
    } else if (semana >= 31 && semana <= 35) {
      mes = '8° Mês';
      tamanho = '42 a 44cm';
      info =
          'O corpinho já está mais proporcional, os órgãos estão próximos da maturidade e os membros tomam uma forma mais parecida com a que terá. O feto deve estar medindo aproximadamente 42cm (do tamanho de uma jaca) e pesando 1.800g. A partir da 34ª semana, ainda não é hora de nascer, mas o bebê já se posiciona para o parto.';
      imagem = 'assets/images/mes_08.png';
    } else if (semana >= 36 && semana <= 42) {
      mes = '9° Mês';
      tamanho = '45 a 48cm';
      info =
          'Com 38 semanas de gestação o bebê está pronto para nascer. A maioria nasce até completar 40 semanas, mas ainda pode esperar até a 42ª, desde que o seu bem-estar seja muito bem monitorado pelo médico. Com 40 semanas, o bebê tem um peso estimado de 3.300g a 3.600g e mede aproximadamente 48cm. Seus movimentos são mais lentos, pois agora ele está mais apertado do que nunca.';
      imagem = 'assets/images/mes_09.png';
    }

    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/images_bkc.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.only(bottom: 10, top: 45),
                  child: Text(
                    mes,
                    style: new TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(left: 30, top: 20, right: 30, bottom: 10),
                height: 140,
                width: 250,

                decoration: new BoxDecoration(
                  image: new DecorationImage(image: new AssetImage(imagem),),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'Tamanho: ' + tamanho,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Text(info, style: TextStyle(fontSize: 20,fontFamily: 'georgia', height:1.1 ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
