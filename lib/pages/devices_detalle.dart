import 'package:flutter/material.dart';

class DeviceDetalle extends StatefulWidget {
  String equipo;
  String modelo;
  IconData icono;
  bool encendido;
  String mac;
  DeviceDetalle({required this.equipo, required this.modelo, required this.icono, required this.encendido, required this.mac});

  @override
  State<DeviceDetalle> createState() => _DeviceDetalleState();
}

class _DeviceDetalleState extends State<DeviceDetalle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Color.fromARGB(255, 4, 76, 134), centerTitle: true, title: const Text('Navicury')),
        body: Container(
          margin: EdgeInsets.all(25),
          child: Column(children: [
            Row(
              children: [
                Text(
                  'Fabricante :',
                  style: TextStyle(fontFamily: 'RobotoMono', fontSize: 18),
                ),
                Spacer(),
                Text(
                  widget.equipo,
                  style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'Modelo :',
                  style: TextStyle(fontFamily: 'RobotoMono', fontSize: 18),
                ),
                Spacer(),
                Text(
                  widget.modelo,
                  style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'MAC :',
                  style: TextStyle(fontFamily: 'RobotoMono', fontSize: 18),
                ),
                Spacer(),
                Text(
                  widget.mac,
                  style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 55),
            Column(
              children: [
                SizedBox(
                  width: 300, // <-- match_parent
                  height: 60, //
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      ///////////////////////
                      Navigator.pop(context, !widget.encendido);
                      ///////////////////////
                    },
                    child: widget.encendido
                        ? Text(
                            "Apagar",
                            style: TextStyle(fontFamily: "RobotoMono", fontSize: 20, color: const Color.fromARGB(255, 4, 76, 134)),
                          )
                        : Text(
                            "Encender",
                            style: TextStyle(fontFamily: "RobotoMono", fontSize: 20, color: const Color.fromARGB(255, 4, 76, 134)),
                          ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
