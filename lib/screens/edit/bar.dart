import 'package:flutter/material.dart';

class BarWidget extends StatelessWidget {
  const BarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Edit existing todo'),
    );
  }
}
