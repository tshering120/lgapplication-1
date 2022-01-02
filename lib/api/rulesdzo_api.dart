import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/rules_dzo.dart';
import '../model/rules_eng.dart';

class RulesdzApi {
  static Future<List<Rules_Dzongkha>> getRulesLocali(
      BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/rules_dzongkha.json');
    final body = json.decode(data);

    return body.map<Rules_Dzongkha>(Rules_Dzongkha.fromJson).toList();
  }
}
