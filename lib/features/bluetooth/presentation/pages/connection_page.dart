import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texano/features/bluetooth/presentation/cubit/bluetooth_cubit.dart';

class ConnectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bluetoothCubit = BlocProvider.of<BluetoothCubit>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: RaisedButton(
              child: Text('Buscar'),
              onPressed: () {
                bluetoothCubit.searchForDevices();
              },
            ),
          ),
          BlocBuilder<BluetoothCubit, BluetoothState>(
            builder: (context, state) {
              if (state is BluetoothDevicesLoaded) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.devices.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.devices[index].name),
                      subtitle: Text(state.devices[index].id.id),
                      onTap: () =>
                          bluetoothCubit.connectDevice(state.devices[index]),
                    );
                  },
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
