import 'dart:typed_data';
import 'package:fisqui_bot/variables/global_variables.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothHelper {
  final FlutterBluetoothSerial _bluetooth = FlutterBluetoothSerial.instance;

  Future<List<BluetoothDevice>> listDevices() async {
    final List<BluetoothDevice> devices = await _bluetooth.getBondedDevices();
    return devices;
  }

  bool validateConnection(BluetoothDevice device) {
    if (device.isConnected) {
      return true;
    }
    return false;
  }

  Future<void> connectDevice(BluetoothDevice device) async {
    await BluetoothConnection.toAddress(device.address)
        .then((value) => connection = value);
    btMac = device.address;
  }

  void sendCommand(String command, String btMac) async {
    BluetoothConnection connectionCommand;
    await BluetoothConnection.toAddress(btMac).then((value) {
      connectionCommand = value;
      connectionCommand.output.add(Uint8List.fromList(command.codeUnits));
    });

    /* var devices = await listDevices();
    BluetoothDevice bt = devices.
    if(connection!.isConnected){
      connection!.output.add(Uint8List.fromList(command.codeUnits));
    } */
  }
}
