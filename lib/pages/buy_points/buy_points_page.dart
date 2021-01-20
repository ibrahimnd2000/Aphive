import 'package:Aphive/widgets/base_view/base_view.dart';
import 'package:Aphive/widgets/bottom_sheets/aphive_bottom_sheet_main.dart';
import 'package:Aphive/widgets/texts/aphive_buy_points_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class BuyPointsPage extends StatefulWidget {
  BuyPointsPage({Key key}) : super(key: key);

  @override
  _BuyPointsPageState createState() => _BuyPointsPageState();

  ///
  /// Static Routing
  ///
  static Route<dynamic> route() => MaterialPageRoute(
        settings: RouteSettings(name: '/buy_points_page'),
        builder: (BuildContext context) => BuyPointsPage(),
      );
}

class _BuyPointsPageState extends State<BuyPointsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AphiveBuyPointsLogo(),
              SizedBox(
                height: ScreenUtil().setHeight(125.8),
              ),
              AphiveBuyPointsText(),
            ],
          ),
          AphiveBottomSheetMain(),
        ],
      ),
    );
  }
}
