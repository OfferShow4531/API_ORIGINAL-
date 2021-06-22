import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickmorty/components/main_bottom_bar.dart';
import 'package:rickmorty/screens/my_screen/global_blocs/characters_bloc.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_grid.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_list.dart';
import 'package:rickmorty/screens/my_screen/widgets/routing_in_BottonAppBar.dart';
import 'package:rickmorty/theme/color_theme.dart';

import 'widgets/charactersScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharactersBloc>(
      create: (BuildContext context) => CharactersBloc()..add(CharactersEvent.initial()),
      child: BlocConsumer<CharactersBloc, CharactersState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) => CircularProgressIndicator(),
            data: (_data) => Scaffold(
              backgroundColor: ColorPalette.mainColor,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: ColorPalette.mainColor,
                automaticallyImplyLeading: false,
                title: SearchTextFiled(),
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
                  child: TotalCharacters(
                    totalCharacters: _data.persons.length.toString(),
                    onTap: (value) {
                      context.read<CharactersBloc>()
                        ..add(
                          CharactersEvent.selectedView(isGrid: value),
                        );
                    },
                  ),
                ),
              ),
              body: _data.isGrid
              ? CharacterGrid()
                  : CharactersList(),
              bottomNavigationBar: IndexedStack(
                children: [HomePageNavigation()],
              ),
              ),
            orElse: () =>  SizedBox.shrink(),
          );
        },

      ),
    );
  }
}
