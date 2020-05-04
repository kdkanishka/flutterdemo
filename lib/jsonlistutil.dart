import 'dart:convert';

import 'package:http/http.dart';

import 'flagmodel.dart';

import 'package:http/http.dart' as http;


List<Flag> convertToFlagList(String jsonText) {
  final jsonData = jsonDecode(jsonText);
  List<dynamic> jsonList = List.from(jsonData);
  List<Flag> flags = jsonList.map((element) => Flag.fromJson(element)).toList();
  return flags;
}

Future<List<Flag>> getFlagList(String url) async{
  final httpResponseFut = http.get(url);
  Response response =  await httpResponseFut;
  String jsonBody = response.body;
  return convertToFlagList(jsonBody);
}