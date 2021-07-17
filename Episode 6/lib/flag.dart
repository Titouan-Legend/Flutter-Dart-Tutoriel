import 'package:flutter/material.dart';

class Flag extends StatelessWidget {
  Flag({String? country, String? webUrl}) {
    if (webUrl != null) {
      this.url = webUrl;
      this.isWeb = true;
    } else {
      this.url = "assets/images/$country.jpg";
      this.isWeb = false;
    }
  }

  late String url;
  late bool isWeb;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: isWeb ? Image.network(url) : Image.asset(url),
    );
  }
}
