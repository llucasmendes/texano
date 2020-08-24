part of 'account_cubit.dart';

class AccountState extends Equatable {
  AccountState({@required this.isPremium});

  final bool isPremium;

  @override
  List<Object> get props => [isPremium];
}
