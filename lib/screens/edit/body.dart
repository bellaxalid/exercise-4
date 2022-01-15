import 'package:flutter/material.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController(text: 'Replace light bulb');
  final descriptionController =
      TextEditingController(text: 'Buy the bulb from online');

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool? doneCheckbox = true;
    return Container(
      padding: const EdgeInsets.all(14.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Title field is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Description field is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            CheckboxListTile(
              value: doneCheckbox,
              onChanged: (bool? value) {
                setState(() {
                  doneCheckbox = value;
                });
              },
              title: const Text('Done'),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Ok')),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Cancel')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
