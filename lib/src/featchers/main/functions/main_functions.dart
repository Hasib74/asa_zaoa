import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/main_bloc.dart';
import '../model/main_screen_widget_model.dart';
import '../route/route_manager.dart';

class MainFunctions {
  var lastWidget = MainScreenWidgetModel(body: SizedBox());

  List<MainScreenWidgetModel> stackWidgets = [];

  void changeBody(BuildContext context, MainScreenWidgetModel body) {
    if (lastWidget.body.key == null || (lastWidget.body.key != body.body.key)) {
      stackWidgets.add(body);
    }

    // lastWidget(body);

    BlocProvider.of<MainBloc>(context).add(MainScreenUpdateEvent(screenData: body));
  }

  updateScreen(MainScreenUpdateEvent event, Emitter<MainState> emit) async {
    emit(MainScreenUpdateLoadingState());

    lastWidget = event.screenData;

    emit(MainScreenUpdateState(screen: lastWidget));
  }

  Future<bool> willPopCallback(BuildContext context) async {
    bool returnValue = false;

    if (stackWidgets.isNotEmpty) {
      stackWidgets.removeLast();
    }

    if (stackWidgets.isNotEmpty) {
      // lastWidget(stackWidgets.last);

      BlocProvider.of<MainBloc>(context).add(MainScreenUpdateEvent(screenData: stackWidgets.last));

      returnValue = false;
    } else {
      returnValue = true;
    }

    if (returnValue) {
      returnValue = RouteController(context).back();
    }

    return Future.value(returnValue);
  }
}
