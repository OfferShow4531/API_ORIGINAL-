part of 'characters_bloc.dart';

@freezed
abstract class CharactersState with _$CharactersState {
  const factory CharactersState.data({
    @required final List<ModelViewData> persons,
    @required final bool isGrid,
}) = _DataCharactersState;

  const factory CharactersState.initial() = _InitialCharactersState;
  const factory CharactersState.loading() = _LoadingCharactersState;


  // const factory HomeState.error() = _ErrorHomeState; //Handle.
}
