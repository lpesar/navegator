import 'package:example13/models/equipos_model.dart';
import 'package:example13/pages/devices_ajustar.dart';
import 'package:example13/pages/devices_detalle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ListaDevices extends StatefulWidget {
  @override
  State<ListaDevices> createState() => _ListaDevicesState();
}

class _ListaDevicesState extends State<ListaDevices> {
  List<String> txtEspacios = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O"
  ];

  List<ListaEquipos> equipo = [];

  @override
  void initState() {
    super.initState();
    equipo = [
      ListaEquipos(equipo: "Televidor", modelo: "AAA-6252", icono: Icons.tv, encendido: false, mac: "11:11:FC:30:PT:40"),
      ListaEquipos(equipo: "Pastel", modelo: "BBB-23442", icono: Icons.cake, encendido: false, mac: "22:22:FC:30:PT:40"),
      ListaEquipos(equipo: "Locación", modelo: "CCC-1111", icono: Icons.add_location_sharp, encendido: false, mac: "33:33:FC:30:PT:40"),
      ListaEquipos(equipo: "Lupa", modelo: "DDD-6252", icono: Icons.zoom_in_outlined, encendido: false, mac: "44:44:FC:30:PT:40"),
      ListaEquipos(equipo: "Ventanas", modelo: "EEE-23452", icono: Icons.auto_awesome_motion, encendido: false, mac: "55:55:FC:30:PT:40"),
      ListaEquipos(equipo: "Telefono", modelo: "FFF-9882", icono: Icons.call_end_sharp, encendido: false, mac: "66:66:FC:30:PT:40"),
      ListaEquipos(equipo: "Grafico", modelo: "GGG-999", icono: Icons.equalizer_rounded, encendido: false, mac: "77:77:FC:30:PT:40"),
      ListaEquipos(equipo: "Seguridad Wifi", modelo: "HHH-24122", icono: Icons.wifi_lock, encendido: false, mac: "88:88:FC:30:PT:40"),
      ListaEquipos(equipo: "Correo", modelo: "YYY-93873", icono: Icons.mail, encendido: false, mac: "99:99:FC:30:PT:40")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 4, 76, 134), centerTitle: true, title: const Text('Navicury'), automaticallyImplyLeading: false),
      body: Column(
        children: [
          SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Espacios',
                style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            //  decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 5)),
            height: MediaQuery.of(context).size.height / 5.5,
            child: ListView.builder(
              // shrinkWrap: true,
              itemCount: txtEspacios.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    child: Container(
                      width: 150,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              txtEspacios[index],
                              style: TextStyle(fontFamily: "RobotoMono", fontWeight: FontWeight.bold, fontSize: 70, color: const Color.fromARGB(255, 4, 76, 134)),
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeviceAjustar(),
                        ),
                      );
                    });
              },
            ),
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Equipos conectados",
                style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            height: MediaQuery.of(context).size.height / 2,
            child: AlignedGridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              itemCount: equipo.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    width: 140,
                    height: 150,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            equipo[index].icono,
                            size: 70,
                            color: Color.fromARGB(255, 4, 76, 134),
                          ),
                          Text(
                            equipo[index].equipo,
                            style: TextStyle(fontFamily: "RobotoMono", fontSize: 15, color: const Color.fromARGB(255, 4, 76, 134)),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () async {
                    final bool result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DeviceDetalle(
                          equipo: equipo[index].equipo,
                          modelo: equipo[index].modelo,
                          icono: equipo[index].icono,
                          encendido: equipo[index].encendido,
                          mac: equipo[index].mac,
                        ),
                      ),
                    );
                    equipo[index].encendido = result;
                  },
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
