import 'package:Aphive/constants.dart';
import 'package:Aphive/features/buy_points/presentation/widgets/aphive_bottom_sheet_main.dart';
import 'package:Aphive/features/buy_points/presentation/widgets/aphive_buy_points_text.dart';
import 'package:Aphive/features/global/presentation/widgets/base_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class BuyPointsPage extends StatefulWidget {
  BuyPointsPage({Key key}) : super(key: key);

  @override
  _BuyPointsPageState createState() => _BuyPointsPageState();
}

class _BuyPointsPageState extends State<BuyPointsPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    final size = MediaQuery.of(context).size;
    return BaseView(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AphiveBuyPointsLogo(),
              SizedBox(
                height: 20,
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
