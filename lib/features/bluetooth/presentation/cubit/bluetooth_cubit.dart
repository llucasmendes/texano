import 'package:bloc/bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:texano/features/bluetooth/domain/usecases/connect_to_device.dart';
import 'package:texano/features/bluetooth/domain/usecases/get_available_bluetooth_devices.dart';

part 'bluetooth_state.dart';

class BluetoothCubit extends Cubit<BluetoothState> {
  BluetoothCubit({
    @required this.getAvailableBluetoothDevices,
    @required this.connectToDevice,
  }) : super(BluetoothInitial());

  final GetAvailableBluetoothDevices getAvailableBluetoothDevices;
  final ConnectToDevice connectToDevice;

  void searchForDevices() async {
    emit(BluetoothLoading());
    final result = await getAvailableBluetoothDevices();
    emit(
      result.fold(
        (failure) => BluetoothDevicesError(message: failure.message),
        (devices) => BluetoothDevicesLoaded(devices: devices),
      ),
    );
  }

  void connectDevice(BluetoothDevice device) async {
    emit(BluetoothLoading());
    final result = await connectToDevice(device);
    emit(
      result.fold(
        (failure) => BluetoothDevicesError(message: failure.message),
        (r) => BluetoothLoading(),
      ),
    );
  }
}
