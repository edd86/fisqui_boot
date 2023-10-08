import 'package:flutter/material.dart';
//TODO: Data Widget
class DataWidget extends StatelessWidget {
  const DataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .1,
      //color: Colors.white,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
    );
  }
}