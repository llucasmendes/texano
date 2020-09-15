import 'dart:ffi';

import 'package:texano/features/bluetooth/data/datasources/bluetooth_datasource.dart';
import 'package:texano/features/bluetooth/domain/repositories/bluetooth_repository.dart';
import 'package:texano/core/error/failures.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class BluetoothRepositoryImpl implements BluetoothRepository {
  BluetoothRepositoryImpl({
    @required this.bluetoothDataSource,
  });

  final BluetoothDataSource bluetoothDataSource;

  @override
  Future<Either<Failure, List<BluetoothDevice>>>
      getAvailableBluetoothDevices() async {
    try {
      final devices = await bluetoothDataSource.getAvailableBluetoothDevices();
      return Right(devices);
    } catch (_) {
      return Left(BluetoothFailure());
    }
  }

  @override
  Future<Either<Failure, void>> connectToDevice(BluetoothDevice device) async {
    try {
      await bluetoothDataSource.connectToDevice(device);
      return Right(Void);
    } catch (_) {
      return Left(BluetoothFailure());
    }
  }
}
