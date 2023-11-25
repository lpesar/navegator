import 'package:example13/pages/devices.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListaDevices()),
          );
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/screen.png"),
            //fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
