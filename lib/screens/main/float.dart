import 'package:flutter/material.dart';

class FloatWidget extends StatelessWidget {
  const FloatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: "btn",
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 2),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () {},
            child: const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}
