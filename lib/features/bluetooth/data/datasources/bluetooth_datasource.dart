import 'package:meta/meta.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BluetoothDataSource {
  BluetoothDataSource({
    @required this.flutterBlue,
  });

  final FlutterBlue flutterBlue;
  final _timeout = Duration(seconds: 30);

  Future<List<BluetoothDevice>> getAvailableBluetoothDevices() async {
    List<BluetoothDevice> devices = [];
    await flutterBlue.startScan(
      timeout: _timeout,
    );
    flutterBlue.scanResults.listen(
      (results) {
        for (ScanResult result in results) {
          devices.add(result.device);
        }
      },
    );
    final connected = await flutterBlue.connectedDevices;
    print(connected);
    flutterBlue.stopScan();
    return devices;
  }

  Future<void> connectToDevice(BluetoothDevice device) async {
    List<BluetoothService> services = await device.discoverServices();
    services.forEach((service) async {
      // Reads all characteristics
      var characteristics = service.characteristics;
      for (BluetoothCharacteristic c in characteristics) {
        await c.setNotifyValue(true);
        c.value.listen((value) {
          print(value);
        });
      }
    });

    // await device.connect(
    //   timeout: _timeout,
    // );

    // final connected = await flutterBlue.connectedDevices;
    // print(connected);
  }
}
