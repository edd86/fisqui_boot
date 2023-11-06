import 'package:fisqui_bot/models/option_model.dart';

class Collection {
  List<Option> options = [
    Option(
      name: 'MRU',
      image: 'assets/images/mru.jpg',
      detalle: 'COCHE SIGUE LINEA',
      codigo: 'https://drive.google.com/file/d/1SabO53crrGzFcBkqo414xODhjPEfRp1S/view?usp=drive_link',
      material: 'https://drive.google.com/file/d/1e2kG9ja-ftDNbDwdfDn8CfyZ8yO_HSmh/view?usp=drive_link'
    ),
    Option(
      name: 'MRUV',
      image: 'assets/images/mruv.jpeg',
      detalle: 'COCHE CONTROLADO POR BLUETHOOT',
      codigo: 'https://drive.google.com/file/d/1_NBRBqch7gdyu9PsQL1D979pB0-AeEx0/view?usp=drive_link',
      material: 'https://drive.google.com/file/d/1a06YtOhAK5JuxBCzIGJkhDSUzqwclRLa/view?usp=drive_link'
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
