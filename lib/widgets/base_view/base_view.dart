import 'package:Aphive/widgets/appbar/aphive_appbar.dart';
import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  final Widget body;
  final Widget leading;

  const BaseView({Key key, this.body, this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AphiveAppBar(
          leading: leading,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        body: body,
      ),
    );
  }
}
