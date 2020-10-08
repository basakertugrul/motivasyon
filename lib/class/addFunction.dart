import 'package:flutter/material.dart';
import 'package:motivation/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AddClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: HexColor("#c9bcbe"), // button color
      child: InkWell(
        onTap: () => _onAlertButtonsPressed(context), // button pressed
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.favorite,size: 30), // icon
            Text("Add",style: TextStyle(fontSize: 18),), // text
          ],
        ),
      ),
    );
  }

  _onAlertButtonsPressed(context) {
    Alert(
      context: context,
      type: AlertType.none,
      title: "Do you want to be a member of this class?",
      buttons: [
        DialogButton(
            child: Text(
              "YES!",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            onPressed: () => Navigator.pop(context),
            color: HexColor("#d1b0bc")),
      ],
    ).show();
  }
}
