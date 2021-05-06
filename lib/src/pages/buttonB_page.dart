import 'package:flutter/material.dart';

class ButtonBPage extends StatefulWidget{
  @override 
  _ButtonBPageState createState() => _ButtonBPageState();
}

class _ButtonBPageState extends State<ButtonBPage>{
  String valor, _name, _sortName = '';
  @override 
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.pink[100],
      title: Text('Ordena tu nombre'),
    ),
    body:Center(
      child: ListView(
      padding:EdgeInsets.symmetric(horizontal:8.0,vertical: 40),
      children: <Widget>[
        _crearInputName(),
        Divider(),
        Text('Salida: $_sortName', style: TextStyle(fontSize: 18)),
        Divider(),
        _createButton()
      ]
    ),
    ));
  }

  Widget _crearInputName(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Digita tu nombre',
        labelText: 'Nombre',
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(20.0),
        ),
      ),
      onChanged: (valor){
        setState(() {
          _name = valor;
        });
      },
    );
  }

  Widget _createButton(){
    return ElevatedButton(
      child: Text('ORDENAR'),
      onPressed: () => _sortingName(),
      style: ElevatedButton.styleFrom(
        primary: Colors.pink[300],
        shape: StadiumBorder()
      )
    );
  }

  Widget _sortingName(){
    var arr = _name.split('');
    arr.sort();
    setState(() {
      _sortName = arr.toString();
    });
    return ListTile(
      title: Text('Salida: $_sortName')
    );
  }
}