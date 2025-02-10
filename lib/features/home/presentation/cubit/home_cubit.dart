import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void setHoveringState(String label, bool value) {
    emit(state
        .copyWith(hoveringStates: {...state.hoveringStates, label: value}));
  }

  void setHover(bool value) {
    emit(state
        .copyWith(isMouseHovering: value));
  }
}
