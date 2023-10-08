import 'package:fisqui_bot/pages/trunk_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? optionSelected;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: size.height * .5,
              width: size.width * .7,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * .5 * .15,
                    ),
                    Text(
                      'ÁREA DE INTERES',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          letterSpacing: 2,
                          fontSize: 24,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: size.height * .5 * .15,
                    ),
                    ListTile(
                      tileColor: Colors.white,
                      title: Text(
                        'FÍSICA',
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 2),
                      ),
                      leading: const Icon(
                        FontAwesomeIcons.atom,
                        color: Color(0xFFe5c132),
                        size: 40,
                      ),
                      trailing: const Icon(
                        FontAwesomeIcons.arrowRightFromBracket,
                        color: Color(0xFFe5c132),
                      ),
                      onTap: () {
                        optionSelected = 'phys';
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(optionSelected),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      tileColor: Colors.white,
                      title: Text(
                        'QUÍMICA',
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 2),
                      ),
                      leading: const Icon(
                        FontAwesomeIcons.biohazard,
                        color: Color(0xFFe5c132),
                        size: 40,
                      ),
                      trailing: const Icon(
                        FontAwesomeIcons.arrowRightFromBracket,
                        color: Color(0xFFe5c132),
                      ),
                      onTap: () {
                        optionSelected = 'chem';
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(optionSelected),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * .5,
              width: double.infinity,
              child: Image.asset(
                'assets/images/family_boot.jpg',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
