import 'package:flutter/material.dart';
class CustoEerrorMessage extends StatelessWidget {
  const CustoEerrorMessage({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errMessage);
  }
}
