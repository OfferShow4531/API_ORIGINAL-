import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:rickmorty/resources/model/MyData.dart';
import 'package:rickmorty/resources/model/rick_and_morty_model.dart';


part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';


class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc() : super(CharactersState.initial());


  bool isGrid = false;
  @override
  Stream<CharactersState> mapEventToState(
    CharactersEvent event,
  ) async* {
    yield* event.map(
      initial: _mapInitialCharactersEvent,
      selectedView: _mapSelectedViewCharactersEvent,

    );
  }

  Stream<CharactersState> _mapInitialCharactersEvent(
      _InitialCharactersEvent event
      )async*{
    yield CharactersState.loading();
    
    try{
      CharactersState.data(persons: personList, isGrid: isGrid);
    }catch(ex){
      throw(ex);
    }
    yield CharactersState.data(persons: personList, isGrid: isGrid);
  }

  Stream<CharactersState> _mapSelectedViewCharactersEvent(
      _SelectedViewCharactersEvent event
      )async*{
    yield CharactersState.loading();
    isGrid = !isGrid;
    yield CharactersState.data(persons: person, isGrid: isGrid);

  }



}
