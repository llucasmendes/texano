import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountState(isPremium: false));

  isPremiumChanged(bool value) => emit(AccountState(isPremium: value));
}
