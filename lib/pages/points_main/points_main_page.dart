import 'package:Aphive/pages/buy_points/buy_points_page.dart';
import 'package:Aphive/pages/gift_points/gift_points_to_a_friend_page_1.dart';
import 'package:Aphive/widgets/base_view/base_view.dart';
import 'package:Aphive/widgets/buttons/aphive_menu_buttons.dart';
import 'package:Aphive/widgets/texts/aphive_greetings_text.dart';
import 'package:Aphive/widgets/texts/aphive_point_balance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Aphive/configs/constants.dart';

class PointsMainPage extends StatefulWidget {
  const PointsMainPage({Key key}) : super(key: key);

  @override
  _PointsMainPageState createState() => _PointsMainPageState();

  ///
  /// Static Routing
  ///
  static Route<dynamic> route() => MaterialPageRoute(
        settings: RouteSettings(name: '/points_main_page'),
        builder: (BuildContext context) => PointsMainPage(),
      );
}

class _PointsMainPageState extends State<PointsMainPage> {
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
      leading: Icon(
        Icons.menu_rounded,
        size: 30,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height: ScreenUtil().setHeight(1546),
            ),
          ),
          Column(
            children: [
              AphiveGreetingsText(
                aphiveGreetings: greetings,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(55),
              ),
              AphivePointBalance(
                assetPath: aphive_icon,
                aphiveBalancePointText: aphive_balance_points,
                aphiveUserBalance: user_point_balance,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(138.5),
              ),
              AphiveMenuButtonsTop.init(
                aphiveMenuBuy: () =>
                    Navigator.of(context).push(BuyPointsPage.route()),
                aphiveMenuGift: () =>
                    Navigator.of(context).push(GiftPointsToAFriend.route()),
                aphiveMenuDonate: () => print("aphiveMenuDonate"),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(88),
              ),
              AphiveMenuButtonsBottom.init(
                aphiveMenuEarn: () => print("aphiveMenuEarn"),
                aphiveMenuHistory: () => print("aphiveMenuHistory"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
