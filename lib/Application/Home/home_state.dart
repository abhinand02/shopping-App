part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<int> itemcount,
    required bool isVisible,
    required int bottomNavigationBarIndex,
  }) = _Initial;

  factory HomeState.initial(){
   return  HomeState(itemcount: List<int>.filled(15, 0, growable: true), isVisible: false, bottomNavigationBarIndex: 0);
  }
}
