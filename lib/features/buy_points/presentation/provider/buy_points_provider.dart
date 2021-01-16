import 'package:flutter/material.dart';

class BuyPoints with ChangeNotifier {
  String _value;

  String get value => _value;

  String setValue(String value) => _value = value;
}
