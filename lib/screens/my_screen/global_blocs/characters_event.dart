part of 'characters_bloc.dart';


@freezed
abstract class CharactersEvent with _$CharactersEvent {

  const factory CharactersEvent.initial() = _InitialCharactersEvent;

  const factory CharactersEvent.selectedView({
    @required bool isGrid,
  }) = _SelectedViewCharactersEvent;


}
