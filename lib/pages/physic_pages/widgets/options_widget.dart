import 'package:fisqui_bot/models/collections.dart';
import 'package:fisqui_bot/models/option_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class OptionsWidget extends StatefulWidget {
  const OptionsWidget({Key? key}) : super(key: key);

  @override
  State<OptionsWidget> createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {
  Option buttonOption = Collection().options[0];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: size.height * .045,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: size.width * .016,
            ),
            shrinkWrap: false,
            scrollDirection: Axis.horizontal,
            itemCount: Collection().options.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: size.width * .225,
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    Collection().options[index].name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(fontSize: size.height * .013),
                  ),
                  onPressed: () {
                    setState(() {
                      buttonOption = Collection().options[index];
                    });
                    //TODO: Lógica de los botónes de opciones
                  },
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: size.height * .010,
        ),
        Container(
          height: size.height * .42,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset(
                  buttonOption.image,
                  height: size.height * .385 *.85,
                  fit: BoxFit.fill,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: ListTile(
                  title: Text(
                    buttonOption.detalle,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * .018,
                    ),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(LineIcons.infinity),
                      TextButton(
                        onPressed: () {
                          //TODO: Bóton de Código
                        },
                        child: Text(
                          '- Código',
                          style: GoogleFonts.lato(
                            color: Colors.black54,
                            fontSize: size.height * .015,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * .1,
                      ),
                      TextButton(
                        onPressed: () {
                          //TODO: Bóton de materiales
                        },
                        child: Text(
                          '- Materiales',
                          style: GoogleFonts.lato(
                            color: Colors.black54,
                            fontSize: size.height * .015,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  trailing: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(
                      'START',
                      style: GoogleFonts.lato(
                        fontSize: size.height * .017,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () {
                      //TODO: Lógica Botón de Inicio de Actividad
                    },
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
