import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';

import 'package:meta/meta.dart';
part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountState(isPremium: false));

  isPremiumChanged(bool value) => emit(state.copyWith(isPremium: value));
}
