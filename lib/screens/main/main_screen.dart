import 'package:ex4/screens/main/body.dart';
import 'package:flutter/material.dart';

import 'bar.dart';
import 'float.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: BarWidget(),
        ),
        body: BodyWidget(),
        floatingActionButton: FloatWidget());
  }
}
