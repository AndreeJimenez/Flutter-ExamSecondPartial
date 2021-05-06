import 'dart:math';
import 'package:flutter/material.dart';

class ButtonAPage extends StatefulWidget{
  @override 
  _ButtonAPageState createState() => _ButtonAPageState();
}

class _ButtonAPageState extends State<ButtonAPage>{
  double _a = 0, _b = 0, _c = 0, _x1 = 0, _x2 = 0;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.pink[100],
      title: Text('Formula cuadratica'),
    ),
    body:Center(
      child: ListView(
      padding:EdgeInsets.symmetric(horizontal:8.0,vertical: 40),
      children: <Widget>[
        _info(),
        _infoFormula(),
        Divider(),
        _crearInputA(),
        Divider(),
        _crearInputB(),
        Divider(),
        _crearInputC(),
        Divider(),
        ListTile(
          title: Text('El resultado de x1 es: $_x1 y el resultado de x2 es: $_x2',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
          )
        ),
        Divider(),
        _createButton()
      ]
    ),
    ));
  }

  Widget _crearInputA(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'El numero A',
        labelText: 'Valor de A',
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(20.0),
        ),
      ),
      onChanged: (valor){
        setState(() {
          _a = double.parse(valor);
        });
      },
    );
  }

  Widget _crearInputB(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Digita el numero B',
        labelText: 'Valor de B',
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(20.0)
        ),
      ),
      onChanged: (valor){
        setState(() {
         _b = double.parse(valor);
        });
      },
    );
  }

  Widget _crearInputC(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Digita el numero C',
        labelText: 'Valor de C',
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(20.0)
        ),
      ),
      onChanged: (valor){
        setState(() {
         _c = double.parse(valor);
        });
      },
    );
  }

  Widget _createButton(){
    return ElevatedButton(
      child: Text('Calcular Formula'),
      onPressed: () => _resolveEcuation(),
      style: ElevatedButton.styleFrom(
        primary: Colors.pink[300],
        shape: StadiumBorder()
      )
    );
  }
  
   Widget _resolveEcuation(){  
    setState(() {
      _x1 = (-_b + sqrt((_b * _b) - (4 * _a * _c))) / (2 * _a);
      _x2 = (-_b - sqrt((_b * _b) - (4 * _a * _c))) / (2 * _a);
    });
    return ListTile(
      title: Text('El resultado de x1 es: $_x1 y el resultado de x2 es: $_x2',
      textAlign: TextAlign.center,)
    );
  }

  Widget _info(){
    return ListTile(
      title: Text('Colocando los valores de a , b , y c , Usted obtendrá los valores deseados de x.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18)
    ));
  }
  Widget _infoFormula(){
    return ListTile(
      title: Text('ax^2 + bx + c.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 22)
    ));
  }
}