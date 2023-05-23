import 'package:bloc/bloc.dart';
import 'package:expreal/Presentation/Home/home_screen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<AddItems>((event, emit) {
      emit(
        state.copyWith(itemcount: event.updatedList,isVisible: event.isVisible,),
      );
    });


    on<SwitchPage>((event, emit) {
      emit(state.copyWith(bottomNavigationBarIndex: event.index));
    });
  }
}
