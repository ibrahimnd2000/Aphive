import 'file:///D:/Aphive%20Project/Aphive/lib/configs/constants.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/bottom_sheets/aphive_bottom_sheet_main.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/texts/aphive_buy_points_text.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/base_view/base_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

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
