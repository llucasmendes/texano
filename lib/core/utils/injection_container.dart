import 'package:get_it/get_it.dart';
import 'package:texano/core/cubit/account_cubit.dart';
import 'package:texano/core/data/moor_database.dart';
import 'package:texano/features/bluetooth/utils/bluetooth_injection.dart';
import 'package:texano/features/home/utils/home_injection.dart';
import 'package:texano/features/run/utils/run_injection.dart';

final dep = GetIt.instance;

void init() {
  //! Features
  //! Home
  initHome();
  //! Run
  initRun();
  //! Bluetooth
  initBluetooth();
  //dep.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(dep()));
  //dep.registerLazySingleton<FirebaseInfo>(() => FirebaseInfoImpl(dep()));
  //! External
  //dep.registerLazySingleton(() => FirebaseAuth.instance);
  //dep.registerLazySingleton(() => Firestore.instance);
  //dep.registerLazySingleton(() => GoogleSignIn());
  //dep.registerLazySingleton(() => FacebookLogin());
  //dep.registerLazySingleton(() => DataConnectionChecker());
  dep.registerLazySingleton(() => AppDatabase());

  dep.registerFactory(
    () => AccountCubit(),
  );
}
