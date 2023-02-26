part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();
}

class MainScreenUpdateEvent extends MainEvent {
  final MainScreenWidgetModel screenData;

  MainScreenUpdateEvent({required this.screenData});

  @override
  List<Object?> get props => [screenData];
}
