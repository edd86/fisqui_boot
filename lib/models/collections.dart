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
      name: 'MCU',
      image:  'assets/images/mcu.jpg',
      detalle: 'COCHE CONTROLADO POR BLUETHOOT',
      codigo: 'assets/docs/codigomcu.pdf',
      material: 'assets/docs/materialesmcu.pdf'
    ),
    Option(
      name: 'CAIDA LIBRE',
      image: 'assets/images/caida.png',
      detalle: 'COCHE CONTROLADO POR BLUETHOOT', 
      codigo: 'assets/docs/codigocl.pdf',
      material: 'assets/docs/materialescl.pdf'
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
