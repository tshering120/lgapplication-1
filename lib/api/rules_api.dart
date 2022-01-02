import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lgapplication/model/acts_eng.dart';
import 'package:http/http.dart' as http;

import '../model/rules_eng.dart';

class RulesApi {
  static Future<List<Rules_English>> getRulesLocali(
      BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/rules_english.json');
    final body = json.decode(data);

    return body.map<Rules_English>(Rules_English.fromJson).toList();
  }
}
