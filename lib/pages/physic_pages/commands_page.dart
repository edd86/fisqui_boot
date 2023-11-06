import 'package:fisqui_bot/helpers/bluetooth_helper.dart';
import 'package:fisqui_bot/variables/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommandsPage extends StatelessWidget {
  CommandsPage({Key? key}) : super(key: key);

  final TextStyle styles = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * .35,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Text(
                    'M.R.U',
                    style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    'Hora de experimentar...',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(19.9),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Distancia = 0.2 m',
                                  style: styles,
                                ),
                                Text(
                                  'Velocidad = 1 m/s',
                                  style: styles,
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          BluetoothHelper helper = BluetoothHelper();
                          helper.sendCommand('1', connection!);
                        },
                      ),
                      InkWell(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(19.9),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Distancia = 0.3 m',
                                  style: styles,
                                ),
                                Text(
                                  'Velocidad = 2 m/s  ',
                                  style: styles,
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          BluetoothHelper helper = BluetoothHelper();
                          helper.sendCommand('2', connection!);
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(19.9),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Distancia = 0.35 m',
                                  style: styles,
                                ),
                                Text(
                                  'Velocidad = 1 m/s',
                                  style: styles,
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          BluetoothHelper helper = BluetoothHelper();
                          helper.sendCommand('3', connection!);
                        },
                      ),
                      InkWell(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(19.9),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Distancia = 0.4 m',
                                  style: styles,
                                ),
                                Text(
                                  'Velocidad = 0.8 m/s',
                                  style: styles,
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          BluetoothHelper helper = BluetoothHelper();
                          helper.sendCommand('4', connection!);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/images/commands.jpg',
              height: size.height * .65,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}
