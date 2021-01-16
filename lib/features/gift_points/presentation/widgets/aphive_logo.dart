import 'package:Aphive/constants.dart';
import 'package:flutter/material.dart';

class AphiveLogo extends StatelessWidget {
  const AphiveLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        aphive_icon,
        height: 53,
        width: 53,
      ),
    );
  }
}
