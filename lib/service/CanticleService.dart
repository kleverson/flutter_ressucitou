import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ressucitou/entities/Canticle.dart';

class CanticleService{

  Future<Canticle> fetchCanticle() async {
    final response = await http.get("https://raw.githubusercontent.com/otaviogrrd/Ressuscitou_Android/master/cantos.json");

    if (response.statusCode == 200){
      print(response.body);
//      return Canticle.fromJson(json.encode(response.body));
    }else{
      throw Exception('Failed to load post');
    }

  }

}
