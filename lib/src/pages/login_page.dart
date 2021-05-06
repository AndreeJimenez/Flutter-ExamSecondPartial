import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override 
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  String valor, _nombre, _edad, _estado;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.pink[100],
      title: Text('Flutter Examen Segundo Parcial'),
    ),
    body:Center(
      child: ListView(
      padding:EdgeInsets.symmetric(horizontal:8.0,vertical: 40),
      children: <Widget>[
        _crearInputNombre(),
        Divider(),
        _crearInputEdad(),
        Divider(),
        _crearInputEstado(),
        Divider(),
        _createButton()
      ]
    ),
    ));
  }

  Widget _crearInputNombre(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Digita tu Nombre',
        labelText: 'Nombre',
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(20.0),
        ),
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearInputEdad(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Digita tu Edad',
        labelText: 'Edad',
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(20.0)
        ),
      ),
      onChanged: (valor){
        setState(() {
         _edad = valor;
        });
      },
    );
  }

  Widget _crearInputEstado(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Digita tu Estado',
        labelText: 'Estado',
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(20.0)
        ),
      ),
      onChanged: (valor){
        setState(() {
          _estado = valor;
        });
      },
    );
  }

  Widget _createButton(){
    return ElevatedButton(
      child: Text('INICIAR'),
      onPressed: () => _showAlert(context),
      style: ElevatedButton.styleFrom(
        primary: Colors.pink[300],
        shape: StadiumBorder()
      )
    );
  }

  _showAlert(BuildContext context) {
    showDialog(
      context: context,      
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Bienvenido!'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fstatici.behindthevoiceactors.com%2Fbehindthevoiceactors%2F_img%2Fchars%2Fthumbs%2Falbedo--12.2_thumb.jpg&f=1&nofb=1'),
              Text('Tu nombre es $_nombre tienes $_edad y eres de $_estado.'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed('/home'),
              child: Text('OK'),
            ),
          ]
        );
      },
    );
  }
}