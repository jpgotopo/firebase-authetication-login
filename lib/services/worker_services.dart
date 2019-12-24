import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:gpm_version_4/src/models/obreros_model.dart';


Future _loadAsWorkerAsset() async {
    return await rootBundle.loadString('assets/misioneros.json');
  }

Future loadWorker() async {
  String jsonString = await _loadAsWorkerAsset();
  final jsonResponse = json.decode(jsonString);
  WorkerList workerList = new WorkerList.fromJson(jsonResponse);
  print("Misioneros " + workerList.workers[0].nombreProy);
}