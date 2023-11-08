import 'package:fisqui_bot/helpers/bluetooth_helper.dart';
import 'package:fisqui_bot/variables/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';

class ListDevices extends StatefulWidget {
  const ListDevices({Key? key}) : super(key: key);

  @override
  State<ListDevices> createState() => _ListDevicesState();
}

class _ListDevicesState extends State<ListDevices> {
  final BluetoothHelper _helper = BluetoothHelper();
  late Future<List<BluetoothDevice>> _devices;

  @override
  void initState() {
    _devices = _helper.listDevices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Ionicons.bluetooth,
            color: Color(0xFFe5c132),
            size: 40,
          ),
          Text(
            'Dispositivos',
            style: GoogleFonts.lato(
              color: const Color(0xFFe5c132),
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FutureBuilder(
            future: _devices,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    BluetoothDevice device = snapshot.data![index];
                    return ListTile(
                      leading: const Icon(
                        LineIcons.bluetooth2,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        device.name!,
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white70,
                        ),
                      ),
                      subtitle: Text(
                        device.address,
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          color: Colors.white54,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          device.isConnected
                              ? const Icon(
                                  Ionicons.checkmark_done_circle,
                                  color: Color(0xFFe5c132),
                                  size: 30,
                                )
                              : const Icon(
                                  Ionicons.close_circle,
                                  color: Colors.white54,
                                  size: 30,
                                ),
                          device.isBonded
                              ? const Icon(
                                  Ionicons.link_outline,
                                  color: Color(0xFFe5c132),
                                  size: 30,
                                )
                              : const Icon(
                                  Ionicons.link_sharp,
                                  color: Colors.white54,
                                  size: 30,
                                ),
                        ],
                      ),
                      onTap: () {
                        if (device.isConnected) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Dispositivo conectado')),
                          );
                          btMac = device.address;
                          Navigator.pop(context);
                        } else {
                          _helper.connectDevice(device);
                          setState(() {
                            device.isConnected;
                          });
                        }
                      },
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xFFe5c132),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
