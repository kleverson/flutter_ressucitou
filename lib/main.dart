import 'package:flutter/material.dart';
import 'package:ressucitou/screens/ListCanticle.dart';
import 'package:ressucitou/screens/Settings.dart';
import 'package:ressucitou/service/CanticleService.dart';

import 'entities/Canticle.dart';

void main() => runApp(RessucitouApp());

class RessucitouApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: RessucitouAppMain()
    );
  }
}

class RessucitouAppMain extends StatefulWidget {
  @override
  _RessucitouPageState createState() => _RessucitouPageState();
}

class _RessucitouPageState extends State<RessucitouAppMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RESSUCITOU",style: TextStyle(
            fontFamily: 'Gothic',
            fontSize: 32.0,
            fontWeight: FontWeight.w500
        ),),
        centerTitle: true
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            _menuWithIcon(
                icon:Icons.settings,
                text: "Configurações",
                onTap:() => {
                 FutureBuilder<Canticle>(
                   future: CanticleService().fetchCanticle(),
                   builder: (context, snapshot) {
                     print(snapshot)
                   },
                 )



                }
//               Navigator.of(context).push(MaterialPageRoute(
//                  builder: (BuildContext context) => Settings()
//                ))
            ),
            _labelDivider("Ver todos (A-Z)",18.0, true),
            _labelDivider("Etapa",11.0, false),
            _menuWithCircle(color:"#fafafa", text:"Pré-Catecumenato",category: 1),
            _menuWithCircle(color:"#fbca8a",text:"Cantos litúrgicos",category: 4),
            _menuWithCircle(color:"#73d5f1", text:"Catecumenato", category:2),
            _menuWithCircle(color:"#a1df86",text:"Eleição", category:3),
            _labelDivider("Tempo liturgico",11.0, false),
            _menuSimple(text:"Advento", filter:"adve"),
            _menuSimple(text:"Natal",filter:"nata"),
            _menuSimple(text:"Quaresma",filter:"quar"),
            _menuSimple(text:"Páscoa",filter:"pasc"),
            _menuSimple(text:"Pentecostes",filter:"pent"),
            _labelDivider("Eucaristia",11.0, false),
            _menuSimple(text:"Cantos de Entrada",filter:"entr"),
            _menuSimple(text:"Paz",filter:"cpaz"),
            _menuSimple(text:"Fração do Pão",filter:"fpao"),
            _menuSimple(text:"Comunhão",filter:"comu"),
            _menuSimple(text:"Canto Final",filter:"cfin"),
          ],
        ),
      ),
      body: ListCanticle("blah"),
    );
  }
}

Widget _menuWithIcon({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text, style: TextStyle(
            fontFamily: 'QuickSand',
            fontSize: 18.0,
            fontWeight: FontWeight.w500
          ),),
        )
      ],
    ),
    onTap: onTap,
  );
}


Widget _menuSimple({String text, String filter}){
  return ListTile(
    title: Row(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'QuickSand',
              fontWeight: FontWeight.w300,
              color: Colors.black
          ),
        ),
      ],
    ),
  );
}

Widget _menuWithCircle({String color, String text, int category}){
  return ListTile(
    title: Row(
      children: <Widget>[
        Container(
          width:12.0,
          height:12.0,
          decoration:BoxDecoration(
              shape:BoxShape.circle,
              color:hexToColor(color)
          )
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: 'QuickSand',
            fontWeight: FontWeight.w300,
            color: Colors.black
          ),
        ),
      ],
    ),
    onTap: () => {
      ListCanticle("blah")
    },
  );
}

Widget _labelDivider(String text, double textSize, bool bold){
  return ListTile(
    title:Text(text.toUpperCase(), style: TextStyle(
        fontSize:textSize,
        fontFamily: 'QuickSand',
        fontWeight: FontWeight.w900,
        color: Colors.black
    ),),
  );
}

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
