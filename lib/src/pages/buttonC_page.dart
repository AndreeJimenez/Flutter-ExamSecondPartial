import 'dart:math';
import 'package:flutter/material.dart';

class ButtonCPage extends StatefulWidget{
  @override 
  _ButtonCPageState createState() => _ButtonCPageState();
}

class _ButtonCPageState extends State<ButtonCPage>{
  String valor, _inicio, _fin, _numeroAleatorio = '';
  @override 
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.pink[100],
      title: Text('Genera un numero Aleatorio'),
    ),
    body:Center(
      child: ListView(
      padding:EdgeInsets.symmetric(horizontal:8.0,vertical: 30),
      children: <Widget>[
        _info(),
        Divider(),
        _crearInputInicio(),
        Divider(),
        _crearInputFin(),
        Divider(),
        Text('NA: $_numeroAleatorio', style: TextStyle(fontSize: 18)),
        Divider(),
        _createButton()
      ]
    ),
    ));
  }

  Widget _crearInputInicio(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Digita el limite inferior',
        labelText: 'Inicio',
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(20.0),
        ),
      ),
      onChanged: (valor){
        setState(() {
          _inicio = valor;
        });
      },
    );
  }

  Widget _crearInputFin(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Digita el limite superior',
        labelText: 'Fin',
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(20.0)
        ),
      ),
      onChanged: (valor){
        setState(() {
         _fin = valor;
        });
      },
    );
  }

  Widget _createButton(){
    return ElevatedButton(
      child: Text('RANDOM'),
      onPressed: () => _generateAleatoryNumber(),
      style: ElevatedButton.styleFrom(
        primary: Colors.pink[300],
        shape: StadiumBorder()
      )
    );
  }

  Widget _generateAleatoryNumber(){
    var random = new Random();
    setState(() {
      _numeroAleatorio = (random.nextDouble() * (int.parse(_fin) - int.parse(_inicio)) + int.parse(_inicio)).toInt().toString();
    });
    return ListTile(
      title: Text('NA: $_numeroAleatorio')
    );
  }

  Widget _info(){
    return ListTile(
      title: Text('Podemos usar la clase Random que reside en la biblioteca dart: math para este propósito. \n\nA diferencia del método nextInt, el método nextDouble no toma ningún parámetro. Los resultados oscilan entre 0,0 y 1,0, siendo 1,0 exclusivo. Lo que nos permite colocar un rango en el cual oscilen los numeros aleatorios.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18)
    ));
  }
}