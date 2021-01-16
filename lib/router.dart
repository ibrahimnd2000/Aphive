import 'package:Aphive/features/buy_points/presentation/pages/buy_points_page.dart';
import 'package:Aphive/features/buy_points/presentation/widgets/aphive_confirmation_dialog.dart';
import 'package:Aphive/features/gift_points/presentation/pages/gift_points_to_a_friend_page_1.dart';
import 'package:Aphive/features/gift_points/presentation/pages/gift_points_to_a_friend_page_2.dart';
import 'package:Aphive/features/gift_points/presentation/pages/gift_points_to_a_friend_page_3.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/gift_point_dialog.dart';
import 'package:Aphive/features/points_main/presentation/pages/points_main_page.dart';
import 'package:flutter/material.dart';
import 'package:Aphive/features/home/homepage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
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
