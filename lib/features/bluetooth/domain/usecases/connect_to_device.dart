import 'package:flutter_blue/flutter_blue.dart';
import 'package:texano/core/error/failures.dart';
import 'package:texano/features/bluetooth/domain/repositories/bluetooth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class ConnectToDevice {
  ConnectToDevice({
    @required this.bluetoothRepository,
  });

  final BluetoothRepository bluetoothRepository;

  Future<Either<Failure, void>> call(BluetoothDevice device) async {
    return await bluetoothRepository.connectToDevice(device);
  }
}
