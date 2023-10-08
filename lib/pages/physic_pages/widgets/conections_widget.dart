import 'package:fisqui_bot/models/collections.dart';
import 'package:fisqui_bot/models/option_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConectionsWidget extends StatelessWidget {
  const ConectionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
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
                  'BOT',
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
                  //TODO: Lógica de las conexiones
                },
              );
            },
          ),
        )
      ],
    );
  }
}
