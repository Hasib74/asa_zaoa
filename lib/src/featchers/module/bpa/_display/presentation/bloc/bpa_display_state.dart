part of 'bpa_display_cubit.dart';

abstract class BpaDisplayState extends Equatable {
  const BpaDisplayState();
}

class BpaDisplayInitial extends BpaDisplayState {
  @override
  List<Object> get props => [];
}

class BpaDisplayChanged extends BpaDisplayState {
  final BpaBottomBarMainMenu menu;

  BpaDisplayChanged(this.menu);

  @override
  List<Object> get props => [menu];
}
