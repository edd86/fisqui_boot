
import 'package:fisqui_bot/variables/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  final String? optionSelected;
  const RegisterPage(this.optionSelected, {Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _tfNombre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * .5,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * .15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * .1,
                      ),
                      Text(
                        'BIENVENIDO A',
                        style: GoogleFonts.lato(
                            color: Colors.white, fontSize: size.height * .03),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'FISQUI',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: size.height * .05,
                            ),
                          ),
                          Text(
                            'BOOT',
                            style: GoogleFonts.lato(
                              color: const Color(0xFFe5c132),
                              fontSize: size.height * .050,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      Text(
                        'DISFRUTA ESTA NUEVA EXPERIENCIA',
                        style: GoogleFonts.lato(
                            color: Colors.white, fontSize: size.height * .015),
                      ),
                      SizedBox(
                        height: size.height * .01,
                      ),
                      TextField(
                        controller: _tfNombre,
                        keyboardType: TextInputType.name,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: size.height * 0.023,
                        ),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          hintText: 'NOMBRE DE USUARIO',
                          hintStyle: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: size.height * 0.024,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * .01,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: size.height * .065,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.white),
                            maximumSize: MaterialStatePropertyAll(size),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Text(
                            'INICIAR SESION',
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: size.height * .024,
                            ),
                          ),
                          onPressed: () {
                            if (_tfNombre.text.isNotEmpty) {
                              userName = _tfNombre.text;
                              _tfNombre.clear();
                              switch (widget.optionSelected) {
                                case 'phys':
                                  Navigator.pushNamed(context, '/physicPage');
                                  break;
                                case 'chem':
                                  Navigator.pushNamed(context, '/chemistryPage');
                                  break;
                                default:
                              }
                            }
                          },
                        ),
                      )
                    ],
                  ),
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
