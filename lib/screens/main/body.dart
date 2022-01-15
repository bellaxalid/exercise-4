import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        'title': 'Replace light bulb',
        'description': 'Buy the bulb from online. prefer to buy a LED bulb'
      },
      {
        'title': 'Subscribe to an internet service',
        'description':
            'Plan to subscribe a fiber optic based service. Potential provider: TM Unifi and Maxis'
      },
      {
        'title': 'Online meeting with friends',
        'description':
            'To discuss about the plan for setting up an online shopping store'
      },
    ];

    return ListView.separated(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          var item = data[index];
          return ListTile(
            onTap: () => Navigator.pushNamed(context, '/edit'),
            title: Text('${item['title']}'),
            subtitle: Text('${item['description']}'),
          );
        },
        separatorBuilder: (context, _) {
          return const Divider(
            color: Colors.grey,
          );
        });
  }
}
