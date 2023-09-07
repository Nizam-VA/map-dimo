import 'package:flutter/material.dart';
import 'package:map_demo/shared/constants.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar,
      body: Container(
        height: h,
        width: w,
        child: Center(
          child: TextButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed('second');
              },
              icon: const Icon(Icons.location_on),
              label: const Text('Goto to Map')),
        ),
      ),
    );
  }
}
