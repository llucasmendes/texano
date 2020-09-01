part of 'account_cubit.dart';

class AccountState extends Equatable {
  AccountState({@required this.isPremium, @required this.preferencia});

  final bool isPremium;

  final Preferencia preferencia;

  AccountState copyWith({
    Preferencia preferencia,
    bool isPremium,
  }) {
    return AccountState(
      isPremium: isPremium ?? this.isPremium,
      preferencia: preferencia ?? this.preferencia,
    );
  }

  @override
  List<Object> get props => [isPremium, preferencia];
}
