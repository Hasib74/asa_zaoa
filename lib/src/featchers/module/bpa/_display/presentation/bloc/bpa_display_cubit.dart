import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/bpa_buttom_bar_menu.dart';

part 'bpa_display_state.dart';

class BpaDisplayCubit extends Cubit<BpaDisplayState> {
  BpaDisplayCubit() : super(BpaDisplayInitial());

  changeTab(BpaBottomBarMainMenu menu) {
    emit(BpaDisplayChanged(menu));
  }
}
