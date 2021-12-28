import 'package:meta/meta.dart';

class Acts_English {
  final String title;
  final String subtitle;
  final String url;
  final String des;

  const Acts_English({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.des,
  });

  static Acts_English fromJson(json) => Acts_English(
      title: json['title'],
      subtitle: json['subtitle'],
      url: json['url'],
      des: json['des']);
}
