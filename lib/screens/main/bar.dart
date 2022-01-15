import 'package:flutter/material.dart';

class BarWidget extends StatelessWidget {
  const BarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: ListTile(
          leading: CircleAvatar(
            child: Image.asset('assets/download.png'),
          ),
          title: const Text(
            'My Todo List',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          ),
          subtitle: const Text(
            'Alexandar Holmes',
            style: TextStyle(color: Colors.white, fontSize: 12),
          )),
      actions: [
        IconButton(
            onPressed: () => Navigator.pushNamed(context, '/login'),
            icon: const Icon(Icons.logout))
      ],
    );
  }
}
