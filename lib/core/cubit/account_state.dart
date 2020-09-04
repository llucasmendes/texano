part of 'account_cubit.dart';

class AccountState extends Equatable {
  AccountState({@required this.isPremium});

  final bool isPremium;

  AccountState copyWith({
    bool isPremium,
  }) {
    return AccountState(
      isPremium: isPremium ?? this.isPremium,
    );
  }

  @override
  List<Object> get props => [isPremium];
}
