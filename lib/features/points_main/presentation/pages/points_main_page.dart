import 'package:Aphive/constants.dart';
import 'package:Aphive/features/global/presentation/widgets/base_view.dart';
import 'package:Aphive/features/points_main/presentation/widgets/aphive_greetings_text.dart';
import 'package:Aphive/features/points_main/presentation/widgets/aphive_menu_buttons.dart';
import 'package:Aphive/features/points_main/presentation/widgets/aphive_point_balance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PointsMainPage extends StatelessWidget {
  const PointsMainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    final size = MediaQuery.of(context).size;
    return BaseView(
      leading: Icon(
        Icons.menu_rounded,
        size: 42.5,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white.withOpacity(.95),
              height: size.height * .51,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              AphiveGreetingsText(
                aphiveGreetings: greetings,
              ),
              SizedBox(
                height: 15,
              ),
              AphivePointBalance(
                assetPath: aphive_icon,
                aphiveBalancePointText: aphive_balance_points,
                aphiveUserBalance: user_point_balance,
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AphiveMenuButtonsTop.init(
                    aphiveMenuBuy: () =>
                        Navigator.of(context).pushNamed('/buy_points'),
                    aphiveMenuGift: () =>
                        Navigator.of(context).pushNamed('/gift_points_1'),
                    aphiveMenuDonate: () => print("aphiveMenuDonate"),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  AphiveMenuButtonsBottom.init(
                    aphiveMenuEarn: () => print("aphiveMenuEarn"),
                    aphiveMenuHistory: () => print("aphiveMenuHistory"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
