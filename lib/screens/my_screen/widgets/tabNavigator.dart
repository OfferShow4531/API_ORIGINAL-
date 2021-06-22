import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rickmorty/screens/my_screen/screen.dart';
import 'package:rickmorty/screens/my_screen/widgets/episode_screen.dart';
import 'package:rickmorty/screens/my_screen/widgets/planet_list.dart';

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  final String tabItem;

  const TabNavigator({Key key,this.navigatorKey,this.tabItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (tabItem == "CharacterPage")
      child == HomeScreen();
    else if(tabItem == "LocationPage")
      child == PlanetList();
    else if(tabItem == "EpisodePage")
      child == EpisodeList();
    else
      child == HomeScreen();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings){
        return MaterialPageRoute(builder: (context)=>child);
      },
    );
  }
}
