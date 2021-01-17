import 'package:Aphive/pages/buy_points/buy_points_page.dart';
import 'package:Aphive/pages/gift_points/gift_points_to_a_friend_page_1.dart';
import 'package:Aphive/pages/gift_points/gift_points_to_a_friend_page_2.dart';
import 'package:Aphive/pages/gift_points/gift_points_to_a_friend_page_3.dart';
import 'package:Aphive/pages/points_main/points_main_page.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/dialog/aphive_confirmation_dialog.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => PointsMainPage());
      case '/buy_points':
        return MaterialPageRoute(builder: (_) => BuyPointsPage());
      case '/points_main':
        return MaterialPageRoute(builder: (_) => PointsMainPage());
      case '/gift_points_1':
        return MaterialPageRoute(builder: (_) => GiftPointsToAFriend());
      case '/gift_points_2':
        return MaterialPageRoute(builder: (_) => GiftPointsToAFriend2());
      case '/gift_points_3':
        return MaterialPageRoute(builder: (_) => GiftPointsToAFriend3());
      case '/buy_points_confirmation':
        return MaterialPageRoute(builder: (_) => AphiveConfirmationDialog());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
