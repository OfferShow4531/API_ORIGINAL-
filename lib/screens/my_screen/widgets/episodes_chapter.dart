import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rickmorty/resources/icons.dart';
import 'package:rickmorty/resources/images.dart';
import 'package:rickmorty/resources/model/MyData.dart';
import 'package:rickmorty/resources/model/rick_and_morty_model.dart';
import 'package:rickmorty/screens/my_screen/widgets/personPage.dart';
import 'package:rickmorty/screens/my_screen/widgets/profile_screen.dart';
import 'package:rickmorty/theme/color_theme.dart';

import '../screen.dart';

class ChaptersScreen extends StatefulWidget {
  const ChaptersScreen({Key key}) : super(key: key);

  @override
  _ChaptersScreenState createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<ChaptersScreen> {
  @override
  Widget build(BuildContext context) {
    Color getColor(String status) {
      var _color = Colors.white;
      switch (status) {
        case "ЖИВОЙ":
          {
            _color = ColorPalette.live;
          }
          break;

        case "МЕРТВЫЙ":
          {
            _color = ColorPalette.dead;
          }
          break;

        default:
          {
            _color = Colors.yellow;
          }
          break;
      }
      return _color;
    }

    Color getColorNow(String stat) {
      var _color = Colors.white;
      switch (stat) {
        case "В сети":
          {
            _color = ColorPalette.live;
          }
          break;

        case "Не беспокоить":
          {
            _color = ColorPalette.episodeColor;
          }
          break;

        case "Отключен":
          {
            _color = ColorPalette.dead;
          }
          break;

        default:
          {
            _color = Colors.yellow;
          }
          break;
      }
      return _color;
    }

    List<EpisodeInfo> episodes = [
      EpisodeInfo(
        episodeID: 1,
        episodeName: 'М.Найт\nШьямал-Инопланетяне!',
        chapterNumber: 'СЕРИЯ 1',
        chapterInfo:
            'Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концен-трирован- ной темной материи.',
        premier: 'Премьера',
        date: '2 декабря 2013',
      ),
    ];
    return Scaffold(
      backgroundColor: ColorPalette.mainColor,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverPersistentHeader(
            delegate: CustomSliverAppBarDelegate(expandedHeight: 200),
            pinned: true,
          ),
          SliverPadding(
            padding: EdgeInsets.all(0.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 60)),
                        ListView.builder(
                          padding: EdgeInsets.all(10),
                          itemCount: episodes.length,
                          itemBuilder: (context, item) {
                            return new InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                              child: Expanded(
                                flex: 5,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            episodes[item].episodeName,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorPalette.nameColor,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(
                                            episodes[item].chapterNumber,
                                            style: TextStyle(
                                              color: ColorPalette.episodeColor,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            episodes[item].chapterInfo,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorPalette.nameColor,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Padding(padding: EdgeInsets.all(10)),
                                          Text(
                                            episodes[item].premier,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorPalette.allPersons,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Padding(padding: EdgeInsets.all(5)),
                                          Text(
                                            episodes[item].date,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: ColorPalette.nameColor,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          shrinkWrap: true,
                        ),
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                color: ColorPalette.hoverColor,
                                indent: 1,
                                endIndent: 1,
                                thickness: 1,
                              ),
                              Padding(padding: EdgeInsets.all(10)),
                              Text(
                                'Персонажи',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: ColorPalette.nameColor),
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          padding: const EdgeInsets.all(10),
                          itemCount: personList.length,
                          itemBuilder: (context, item) {
                            return new InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                      child: Image(
                                        image:
                                            AssetImage(personList[item].image),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          personList[item].status,
                                          style: TextStyle(
                                            color: getColor(
                                                personList[item].status),
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          personList[item].name,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          personList[item].gender,
                                          style: TextStyle(
                                            color: ColorPalette.allPersons,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          personList[item].now,
                                          style: TextStyle(
                                            color: getColorNow(
                                                personList[item].now),
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 60, right: 0),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      CharacterProfileScreen(),
                                                ),
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          shrinkWrap: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    @required this.expandedHeight,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlaps) {
    final size = 50;
    final top = expandedHeight - shrinkOffset - size / 0.5;
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        buildAppBar(shrinkOffset),
        Positioned(
          top: top,
          right: 100,
          left: 100,
          child: buildFloating(),
        )
      ],
    );
  }

  Widget buildAppBar(double shrinkOffset) => AppBar(
        flexibleSpace: Image.asset(
          Images.chapterBackImage,
          fit: BoxFit.cover,
        ),
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  Widget buildFloating() => Row(children: [
        Expanded(
            child: Image.asset(
          Images.appBarButton,
          fit: BoxFit.cover,
        ))
      ]);

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    throw UnimplementedError();
  }
}
