import 'package:asa_zaoa/src/core/dependencyInjection/app_dependency_injections.dart';
import 'package:asa_zaoa/src/featchers/main/model/main_screen_widget_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../functions/main_functions.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<MainEvent>((event, emit) async {
      if (event is MainScreenUpdateEvent) {
        await sl<MainFunctions>().updateScreen(event, emit);
      }
    });
  }
}
