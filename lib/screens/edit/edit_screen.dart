import 'package:ex4/screens/edit/bar.dart';
import 'package:ex4/screens/edit/body.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BarWidget(),
      ),
      body: BodyWidget(),
    );
  }
}
