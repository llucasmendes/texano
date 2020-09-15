import 'package:dartz/dartz.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:texano/core/error/failures.dart';

abstract class BluetoothRepository {
  Future<Either<Failure, List<BluetoothDevice>>> getAvailableBluetoothDevices();
  Future<Either<Failure, void>> connectToDevice(BluetoothDevice device);
}
