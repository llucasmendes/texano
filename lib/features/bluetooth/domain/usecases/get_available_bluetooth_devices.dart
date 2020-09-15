import 'package:texano/features/bluetooth/domain/repositories/bluetooth_repository.dart';
import 'package:texano/core/error/failures.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class GetAvailableBluetoothDevices {
  GetAvailableBluetoothDevices({
    @required this.bluetoothRepository,
  });

  final BluetoothRepository bluetoothRepository;

  Future<Either<Failure, List<BluetoothDevice>>> call() async {
    return await bluetoothRepository.getAvailableBluetoothDevices();
  }
}
