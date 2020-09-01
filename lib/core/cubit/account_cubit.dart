import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:texano/core/data/moor_database.dart';
import 'package:texano/features/home/data/datasource/home_datasouce.dart';
import 'package:texano/features/home/domain/entities/preferencia.dart';
import 'package:meta/meta.dart';
part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountState(isPremium: false, preferencia: null));

  isPremiumChanged(bool value) => emit(state.copyWith(isPremium: value));

  recuperaPreferencia() async {
    AppDatabase database = new AppDatabase();
    HomeDataSource datasource = HomeDataSource(database: database);
    dynamic pref = await datasource.getPreferenciasSalvas();
    emit(state.copyWith(preferencia: pref[0]));
  }
}
