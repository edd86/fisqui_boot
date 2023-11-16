import 'package:fisqui_bot/models/collections.dart';
import 'package:fisqui_bot/models/option_model.dart';
import 'package:fisqui_bot/pages/physic_pages/commands_mru_page.dart';
import 'package:fisqui_bot/pages/physic_pages/commands_mcu_page.dart';
import 'package:fisqui_bot/pages/physic_pages/widgets/pdf_visor.dart';
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
  String optionName = Collection().options[0].name;

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
                    optionName = Collection().options[index].name;
                    setState(() {
                      buttonOption = Collection().options[index];
                    });
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
                  height: size.height * .385 * .85,
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
                          if (buttonOption.codigo != '') {
                            openPDFAcrobat(buttonOption.codigo);
                          }
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
                          if (buttonOption.material != '') {
                            openPDFAcrobat(buttonOption.material);
                          }
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
                      switch (optionName) {
                        case 'MRU':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CommandsMruPage(),
                            ),
                          );
                          break;
                        case 'MCU':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CommandsMruvPage(),
                            ),
                          );
                        default:
                      }
                    },
                  ),
                ),
              )
            ],
          ),
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
            child: Row(
              children: [
                Text(
                  'CONEXIONES FISQUI',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'BOOT',
                  style: GoogleFonts.lato(
                    color: const Color(0xFFe5c132),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * .01,
        ),
        SizedBox(
          //color: Colors.amber,
          height: size.height * .17,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: Collection().options.length,
            separatorBuilder: (context, index) => SizedBox(
              width: size.width * .02,
            ),
            itemBuilder: (context, index) {
              Option conectionOption = Collection().options[index];
              return GestureDetector(
                child: Container(
                  height: size.height * .15,
                  width: size.width * .4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          conectionOption.image,
                          height: size.height * .15 * .89,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * .010),
                        child: Text(
                          conectionOption.detalle,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            fontSize: size.height * .014,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  optionName = conectionOption.name;
                  setState(() {
                    buttonOption = conectionOption;
                  });
                },
              );
            },
          ),
        )
      ],
    );
  }

  void openPDFAcrobat(String pdfURL) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PdfVisor(pdfURL),
      ),
    );
  }
}
