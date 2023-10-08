import 'package:fisqui_bot/models/option_model.dart';

class Collection {
  List<Option> options = [
    Option(
      name: 'MRU',
      image: 'assets/images/mru.jpg',
      detalle: 'COCHE SIGUE LINEA',
    ),
    Option(
      name: 'MRUV',
      image: 'assets/images/mruv.jpeg',
      detalle: 'COCHE CONTROLADO POR BLUETHOOT',
    ),
    Option(
      name: 'CAÍDA LIBRE',
      image: 'assets/images/caida.png',
      detalle: 'COCHE CONTROLADO POR BLUETHOOT',
    ),
    Option(
      name: 'MOV. PARABÓLICO',
      image: 'assets/images/parabolico.jpg',
      detalle: 'CATAPULTA',
    )
  ];
}
