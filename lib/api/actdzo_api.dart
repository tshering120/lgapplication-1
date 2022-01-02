import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lgapplication/model/act_dzo.dart';

class ActsdzoApi {
  static Future<List<Acts_Dzongkha>> getActsdLocali(
      BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/acts_dzongkha.json');
    final body = json.decode(data);

    return body.map<Acts_Dzongkha>(Acts_Dzongkha.fromJson).toList();
  }
}
