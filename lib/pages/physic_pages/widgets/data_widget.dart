import 'package:fisqui_bot/pages/physic_pages/widgets/list_bluetooth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .09,
      //color: Colors.white,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Colors.black45,
            Colors.white38,
            Colors.white,
            Colors.white,
            Colors.white38,
            Colors.black45,
          ],
        ),
        border: Border(),
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.black),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
            ),
          ),
          child: Text(
            'Seleccionar Dispositivo',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const ListDevices(),
            );
          },
        ),
      ),
    );
  }
}
