import 'package:flutter_blue/flutter_blue.dart';
import 'package:texano/core/utils/injection_container.dart';
import 'package:texano/features/bluetooth/data/datasources/bluetooth_datasource.dart';
import 'package:texano/features/bluetooth/data/repositories/bluetooth_repository_impl.dart';
import 'package:texano/features/bluetooth/domain/repositories/bluetooth_repository.dart';
import 'package:texano/features/bluetooth/domain/usecases/connect_to_device.dart';
import 'package:texano/features/bluetooth/domain/usecases/get_available_bluetooth_devices.dart';
import 'package:texano/features/bluetooth/presentation/cubit/bluetooth_cubit.dart';

initBluetooth() {
  // bloc
  dep.registerFactory(
    () => BluetoothCubit(
      getAvailableBluetoothDevices: dep(),
      connectToDevice: dep(),
    ),
  );

  // usecases
  dep.registerFactory(
    () => GetAvailableBluetoothDevices(
      bluetoothRepository: dep(),
    ),
  );

  dep.registerFactory(
    () => ConnectToDevice(
      bluetoothRepository: dep(),
    ),
  );

  // repository
  dep.registerFactory<BluetoothRepository>(
    () => BluetoothRepositoryImpl(
      bluetoothDataSource: dep(),
    ),
  );

  // datasource
  dep.registerFactory(
    () => BluetoothDataSource(
      flutterBlue: dep(),
    ),
  );

  // external
  dep.registerLazySingleton(() => FlutterBlue.instance);
}
