import 'package:flutter/material.dart';
//Cette partie est directement rattachée à <longListView.dart>
void showSnackBar(BuildContext context, String item){
  var snackBar =  SnackBar(
    content: Text("Vous venez de cliquer sur $item"),
    action: SnackBarAction(
      label: "Compris",
      onPressed: (){
        debugPrint("En cours d'achivage");
      },
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //ScaffoldMessenger est aussi remplacable par Scaffold
}