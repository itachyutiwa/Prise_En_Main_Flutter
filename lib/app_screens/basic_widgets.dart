import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// class Capture extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     AssetImage assetImage = AssetImage('images/img.png');
//     Image image = Image(image: assetImage,width: 250.0,height: 250.0,);
//     return Container(child: image,);
//   }
//
// }

class ClickButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 250.0,
      height: 50.0,
        margin: EdgeInsets.only(top: 150.0),
      child: ElevatedButton(
        onPressed: () {
          myFonction(context);
        },

        child: Container(

          child: Text('Se connecter'),
        ),),
    );
  }

  void myFonction(BuildContext context) {
    var alertDialog = new AlertDialog(
      title: Text('Connexion'),
      content: Text('Conexion reussie'),
    );

    showDialog(context: context, builder: (BuildContext context){
      return alertDialog;
    });

  }
  
}


class UserName extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
    margin: EdgeInsets.all(25.0),
      child: Column(children: <Widget>[
Text('Nom utilisateur :', style: TextStyle( fontSize: 25.0),)
      ],),
    );
  }

}


class Psswd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Column(children: <Widget>[
        Text('Mot de pass :', style: TextStyle( fontSize: 25.0),)
      ],),
    );
  }

}
//
// Widget getListView(){
//   var listView = ListView(
//     children: [
//       ListTile(
//         leading: Icon(Icons.landscape),
//         title: Text('Photo'),
//         subtitle: Text('Photo de profile'),
//         trailing: Icon(Icons.wb_auto),
//       )
//     ],
//   );
// }


class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      elevation:1.0,
      color: Colors.white,
      child: Align(
        child: Center(
          child: Container(
             child: Column(

            children: <Widget>[
              UserName(),
              Psswd(),
              ClickButton(),
            ],

             ),

          ),
        ),
      ),
    );
  }

}


