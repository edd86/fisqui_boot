import 'package:fisqui_bot/pages/physic_pages/widgets/conections_widget.dart';
import 'package:fisqui_bot/pages/physic_pages/widgets/data_widget.dart';
import 'package:fisqui_bot/pages/physic_pages/widgets/options_widget.dart';
import 'package:fisqui_bot/variables/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class PhysicPage extends StatefulWidget {
  const PhysicPage({Key? key}) : super(key: key);

  @override
  State<PhysicPage> createState() => _PhysicPageState();
}

class _PhysicPageState extends State<PhysicPage> {
  bool showBox = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: size.height * .020,
                horizontal: size.width * .025,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: size.height * .075,
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                'FisQui',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: size.height * .035,
                                ),
                              ),
                              Text(
                                'Boot',
                                style: GoogleFonts.lato(
                                  color: const Color(0xFFe5c132),
                                  fontSize: size.height * .035,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * .10,
                      ),
                      Image.asset(
                        'assets/images/bot.jpg',
                        width: size.width * .22,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: size.width * .10,
                      ),
                      IconButton(
                        icon: const Icon(
                          Ionicons.grid_outline,
                          color: Color(0xFFe5c132),
                        ),
                        onPressed: () {
                          setState(() {
                            showBox = !showBox;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height * .035,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(0, 255, 255, 255),
                          Color.fromARGB(75, 255, 255, 255),
                          Color.fromARGB(75, 255, 255, 255),
                          Color.fromARGB(100, 255, 255, 255),
                          Color.fromARGB(100, 255, 255, 255),
                          Color.fromARGB(100, 255, 255, 255),
                          Color.fromARGB(75, 255, 255, 255),
                          Color.fromARGB(0, 255, 255, 255),
                        ],
                      ),
                      //color: Color.fromARGB(100, 255, 255, 255),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: size.height * .009,
                      ),
                      child: Text(
                        'ESCOGE UN PROYECTO DE CINEMÁTICA',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  const DataWidget(),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  const OptionsWidget(),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  const ConectionsWidget()
                ],
              ),
            ),
            if (showBox)
              Positioned.fill(
                top: size.height * .105,
                left: size.width * .5,
                right: size.width * .08,
                bottom: size.height * .75,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width * .35,
                          child: Text(
                            userName!,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .35,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              maximumSize: MaterialStatePropertyAll(size),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            child: Text(
                              'Cerrar Sesión',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {
                              Navigator.popUntil(
                                context,
                                ModalRoute.withName('/'),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
