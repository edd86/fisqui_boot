import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChemistryPage extends StatefulWidget {
  const ChemistryPage({Key? key}) : super(key: key);

  @override
  State<ChemistryPage> createState() => _ChemistryPageState();
}

class _ChemistryPageState extends State<ChemistryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/working-chemicals.png'),
            Text(
              'En Construcción',
              style: GoogleFonts.lato(
                color: const Color(0xFFe5c132),
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
