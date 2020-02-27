import 'package:flutter/material.dart';

class Settings extends StatelessWidget{

  static const String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text("CONFIGURAÇÕES", style: TextStyle(
            fontFamily: 'Gothic',
            fontSize: 32.0,
            fontWeight: FontWeight.w500
        ),),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            _switchListItem(text:"Apenas Wifi", checked: false),
            _switchListItem(text:"Exibir todos os refrões",checked: true),
            _switchListItem(text:"Cifras americanas(A, Am, D...)",checked: false),
            _switchListItem(text:"Salvar transposições",checked: false),
            _switchListItem(text:"Baixar todos os áudios",checked: true),
          ],
        ),
      ),
    );
  }

}

Widget _switchListItem({String text, bool checked}){
  return ListTile(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(text, style: TextStyle(
            fontSize: 18.0,
            fontFamily: 'QuickSand',
            fontWeight: FontWeight.w300,
            color: Colors.black
          ),
        ),
        Switch(

          value: checked,
          onChanged: (value) {
            print(value);
          },
          activeTrackColor: hexToColor("#f10011"),
          activeColor: hexToColor("#ececec"),
        )
      ],
    ),
  );
}

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
