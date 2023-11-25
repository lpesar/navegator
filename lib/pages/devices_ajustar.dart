import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class DeviceAjustar extends StatefulWidget {
  // String equipo;
  // String modelo;
  // IconData icono;
  // bool encendido;
  // String mac;
  // DeviceAjustar({required this.equipo, required this.modelo, required this.icono, required this.encendido, required this.mac});

  @override
  State<DeviceAjustar> createState() => _DeviceAjustarState();
}

class _DeviceAjustarState extends State<DeviceAjustar> {
  double luz_a = 0;
  double luz_b = 0;
  final double min = 0;
  final double max = 100;
  final List<String> labels = [
    '0',
    '50',
    '100'
  ];
  //double _value = 40.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Color.fromARGB(255, 4, 76, 134), centerTitle: true, title: const Text('Navicury')),
        body: Container(
          //  color: Colors.red,
          margin: EdgeInsets.all(25),
          child: Column(children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Ajustar",
                    style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Luz A",
                    style: TextStyle(fontFamily: 'RobotoMono', fontSize: 16),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SfSliderTheme(
                    data: SfSliderThemeData(
                      activeTrackHeight: 1,
                      inactiveTrackHeight: 1,
                    ),
                    child: SfSlider(
                      activeColor: Color.fromARGB(255, 4, 76, 134),
                      inactiveColor: Color.fromARGB(255, 4, 76, 134),
                      min: min,
                      max: max,
                      value: luz_a,
                      interval: 50,
                      // showTicks: true,
                      showLabels: true,
                      //  enableTooltip: true,
                      minorTicksPerInterval: 1,
                      onChanged: (dynamic value) {
                        setState(() {
                          luz_a = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Luz B",
                    style: TextStyle(fontFamily: 'RobotoMono', fontSize: 16),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SfSliderTheme(
                    data: SfSliderThemeData(
                      activeTrackHeight: 1,
                      inactiveTrackHeight: 1,
                    ),
                    child: SfSlider(
                      activeColor: Color.fromARGB(255, 4, 76, 134),
                      inactiveColor: Color.fromARGB(255, 4, 76, 134),
                      min: min,
                      max: max,
                      value: luz_b,
                      interval: 50,
                      // showTicks: true,
                      showLabels: true,
                      //  enableTooltip: true,
                      minorTicksPerInterval: 1,
                      onChanged: (dynamic value) {
                        setState(() {
                          luz_b = value;
                        });
                      },
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
