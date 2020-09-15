part of 'bluetooth_cubit.dart';

abstract class BluetoothState extends Equatable {
  const BluetoothState();

  @override
  List<Object> get props => [];
}

class BluetoothInitial extends BluetoothState {}

class BluetoothLoading extends BluetoothState {}

class BluetoothDevicesError extends BluetoothState {
  BluetoothDevicesError({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}

class BluetoothDevicesLoaded extends BluetoothState {
  BluetoothDevicesLoaded({@required this.devices});

  final List<BluetoothDevice> devices;

  @override
  List<Object> get props => [devices];
}
