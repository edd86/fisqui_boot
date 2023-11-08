import 'package:fisqui_bot/models/option_model.dart';

class Collection {
  List<Option> options = [
    Option(
      name: 'MRU',
      image: 'assets/images/mruv.jpeg',
      detalle: 'COCHE SIGUE LINEA',
      codigo: 'assets/docs/codigomru.pdf',
      material: 'assets/docs/materialesmru.pdf'
    ),
    Option(
      name: 'MRUV',
      image:  'assets/images/mru.jpg',
      detalle: 'COCHE CONTROLADO POR BLUETHOOT',
      codigo: 'assets/docs/codigomruv.pdf',
      material: 'assets/docs/materialesmruv.pdf'
    ),
    Option(
      name: 'CAÍDA LIBRE',
      image: 'assets/images/caida.png',
      detalle: 'COCHE CONTROLADO POR BLUETHOOT',
      codigo: '',
      material: ''
    ),
    Option(
      name: 'MOV. PARABÓLICO',
      image: 'assets/images/parabolico.jpg',
      detalle: 'CATAPULTA',
      codigo: '',
      material: ''
    )
  ];
}
