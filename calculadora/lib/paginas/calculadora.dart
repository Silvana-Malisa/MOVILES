import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

Widget _boton(String buttonText,
    {Color color = const Color.fromARGB(255, 50, 49, 49), int flex = 1}) {
  return Expanded(
    flex: flex,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
      child: Container(
        width: 80.0,
        height: 80.0,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    ),
  );
}

class _CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Calculadora'),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100.0,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 48.0),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 1.0,
            height: 16.0,
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 10.0),
              _boton('C', color: Colors.red),
              SizedBox(width: 10.0),
              _boton('( )', color: Colors.orange),
              SizedBox(width: 10.0),
              _boton('%', color: Colors.orange),
              SizedBox(width: 10.0),
              _boton('÷', color: Colors.orange),
              SizedBox(width: 10.0),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 10.0),
              _boton('7', color: const Color.fromARGB(255, 50, 49, 49)),
              SizedBox(width: 10.0),
              _boton('8'),
              SizedBox(width: 10.0),
              _boton('9'),
              SizedBox(width: 10.0),
              _boton('x', color: Colors.orange),
              SizedBox(width: 10.0),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              SizedBox(width: 10.0),
              _boton('4'),
              SizedBox(width: 10.0),
              _boton('5'),
              SizedBox(width: 10.0),
              _boton('6'),
              SizedBox(width: 10.0),
              _boton('-', color: Colors.orange),
              SizedBox(width: 10.0),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              SizedBox(width: 10.0),
              _boton('1'), SizedBox(width: 10.0), // Botón más ancho con flex 2
              _boton('2'), SizedBox(width: 10.0),
              _boton('3'), SizedBox(width: 10.0),
              _boton('+', color: Colors.orange), SizedBox(width: 10.0),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              SizedBox(width: 10.0),
              _boton('+/-'),
              SizedBox(width: 10.0), // Botón más ancho con flex 2
              _boton('0'), SizedBox(width: 10.0),
              _boton('.'), SizedBox(width: 10.0),
              _boton('=', color: Colors.green), SizedBox(width: 10.0),
            ],
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
