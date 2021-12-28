import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lgapplication/model/acts_eng.dart';
import 'package:http/http.dart' as http;

class ActsApi {
  static Future<List<Acts_English>> getActsLocali(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/acts_english.json');
    final body = json.decode(data);

    return body.map<Acts_English>(Acts_English.fromJson).toList();
  }
}
