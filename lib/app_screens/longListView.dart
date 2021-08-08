import 'package:flutter/material.dart';

import 'action_button_and_snackbar.dart';

    List<String> getListElements(){
      var items = List<String>.generate(1000, (counter) => "Utilisateur $counter");
      return items;
    }


    Widget getListView(){
      var listItems = getListElements();
      var listView = ListView.builder(
          itemBuilder: (context, index){
            return ListTile(
              leading: Icon(Icons.account_circle),
              trailing: Icon(Icons.arrow_right),
              title: Text(listItems[index]),
              onTap: (){
                showSnackBar(context, listItems[index]);
              } ,
            );
          }
      );
      return listView;
    }