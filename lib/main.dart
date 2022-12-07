import 'package:flutter/material.dart';

void main() {
  runApp(ContadorDeMoedas());
}

class ContadorDeMoedas extends StatefulWidget {
  const ContadorDeMoedas({super.key});

  @override
  State<ContadorDeMoedas> createState() => _ContadorDeMoedasState();
}

class _ContadorDeMoedasState extends State<ContadorDeMoedas> {
  int moedas = 0;
  int bronze = 0;
  int prata = 0;
  int ouro = 0;

  double fonteEnunciado = 25;
  double fonteNumeros = 25;
  double fonteNomes = 25;

  void _aumentarMoedas() {
    setState(() {
      moedas++;

      ouro = (moedas~/100);
      prata = ((moedas%100)~/10);
      bronze = (moedas%10).toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: GestureDetector(
        onDoubleTap: _aumentarMoedas,

        child: Stack(
          children: [
            Container(color: Colors.blue,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Clique duas vezes para aumentar a quantidade de moedas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fonteEnunciado,
                    decoration: TextDecoration.none
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Ouro:',
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: fonteNomes,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Text(
                          'Prata:',
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: fonteNomes,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Text(
                          'Bronze:',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: fonteNomes,
                              decoration: TextDecoration.none
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          ouro.toString() + "   ",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: fonteNumeros,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Text(
                          prata.toString() + "   ",
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: fonteNumeros,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Text(
                          bronze.toString() + " ",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: fonteNumeros,
                              decoration: TextDecoration.none
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}
