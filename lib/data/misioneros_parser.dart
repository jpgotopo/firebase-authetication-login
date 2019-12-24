import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

/* Misioneros _parseJsonForMisioneros(String jsonString) {
  Map decoded = jsonDecode(jsonString);
  return new Misioneros(decoded['id'], decoded['nombreProy'], decoded['image'], decoded['lugar'], decoded['proceso']);

}

Future<String> _loadMisionerosAsset() async {
  return await rootBundle.loadString('assets/misioneros.json');
}

Future loadMisioneros() async {
  String jsonMisioneros = await _loadMisionerosAsset();
  Misioneros misionero =_parseJsonForMisioneros(jsonMisioneros);

  print(misionero.nombreProy);
} */

class Misioneros {
  final int id;
  final String nombreProy;
  final String image;
  final String lugar;
  final String proceso;

  Misioneros({this.id, this.nombreProy, this.image, this.lugar, this.proceso});
  //Agrego esto para ver si funciona el MAP
  factory Misioneros.fromJson(Map<String, dynamic> json) {
    return new Misioneros(
      id: json['id'],
      nombreProy: json['nombreProy'],
      image: json['image'],
      lugar: json['lugar'],
      proceso: json['proceso'],
      
    );
    //fin agregado 1
  }
}

//Agregando clase de Lista
class MisionerosList {
  final List<Misioneros> misioneros;

  MisionerosList({
    this.misioneros,
  });

  factory MisionerosList.fromJson(List<dynamic> parsedJson) {
    List<Misioneros> misioneros = new List<Misioneros>();
    misioneros = parsedJson.map((i)=>Misioneros.fromJson(i)).toList();

    return new MisionerosList(
      misioneros: misioneros
    );
  }
}
//Fin del Agregado 2
