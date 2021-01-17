import 'file:///D:/Aphive%20Project/Aphive/lib/configs/constants.dart';
import 'package:Aphive/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1275, 2767),
      allowFontScaling: false,
      child: MaterialApp(
        title: 'Aphive',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFF005AFF),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: pointsMainPage,
      ),
    );
  }
}
