part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.addItems({
    required List<int> updatedList,
    required bool isVisible,
  }) = AddItems;

  const factory HomeEvent.switchPage({
    required int index,
  }) = SwitchPage;
  
}