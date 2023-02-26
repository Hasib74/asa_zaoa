part of 'main_bloc.dart';

abstract class MainState extends Equatable {
  const MainState();
}

class MainInitial extends MainState {
  @override
  List<Object> get props => [];
}

class MainScreenUpdateLoadingState extends MainState {
  MainScreenUpdateLoadingState();

  @override
  List<Object?> get props => [];
}

class MainScreenUpdateState extends MainState {
  final MainScreenWidgetModel screen;

  MainScreenUpdateState({required this.screen});

  @override
  List<Object?> get props => [];
}
