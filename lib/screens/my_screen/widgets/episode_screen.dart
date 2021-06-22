import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rickmorty/components/main_bottom_bar.dart';
import 'package:rickmorty/resources/model/MyData.dart';
import 'package:rickmorty/screens/my_screen/widgets/profile_screen.dart';
import 'package:rickmorty/theme/color_theme.dart';

import 'charactersScreen.dart';
import 'episodes_chapter.dart';

class EpisodeList extends StatelessWidget {
  const EpisodeList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.mainColor,
        title: SearchTextFiledEpisode(),
        actions: [
          VerticalDivider(
            color: ColorPalette.personType,
            width: 1,
            indent: 12,
            endIndent: 12,
            thickness: 1,
          ),
          IconButton(
              icon: Icon(
                Icons.filter_alt_outlined,
                color: ColorPalette.personType,
              ),
              onPressed: () {})
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: AllEpisodes(),
        ),
      ),
        bottomNavigationBar: MainBottomBar(),
        backgroundColor: ColorPalette.mainColor,
      body: ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: infoList.length,
      itemBuilder: (context, item) {
        return new InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ChaptersScreen(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    child: Image(
                      image: AssetImage(infoList[item].image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        infoList[item].chapter_numb,
                        style: TextStyle(
                          color: ColorPalette.episodeColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        infoList[item].chapter_name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        infoList[item].date,
                        style: TextStyle(
                          color: ColorPalette.allPersons,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      shrinkWrap: true,
      ),
    );
  }
}
