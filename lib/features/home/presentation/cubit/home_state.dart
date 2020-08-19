part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLaudasCarregando extends HomeState {}

class HomeLaudasCarregadas extends HomeState {
  HomeLaudasCarregadas({@required this.laudas});

  final List<Lauda> laudas;

  @override
  List<Object> get props => [laudas];
}

class HomeLaudasFalha extends HomeState {
  HomeLaudasFalha({@required this.mensagem});

  final String mensagem;

  @override
  List<Object> get props => [mensagem];
}
