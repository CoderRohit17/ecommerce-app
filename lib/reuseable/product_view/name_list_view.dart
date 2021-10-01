import 'package:flutter/material.dart';

class NameListView extends StatelessWidget {
  final String name;
  const NameListView({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 75,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                name,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ),
            const Divider(thickness: 1)
          ],
        ));
  }
}
