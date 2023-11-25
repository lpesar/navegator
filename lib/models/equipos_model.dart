import 'package:flutter/material.dart';

class ListaEquipos {
  String equipo;
  String modelo;
  IconData icono;
  bool encendido;
  String mac;

  ListaEquipos({
    required this.equipo,
    required this.modelo,
    required this.icono,
    required this.encendido,
    required this.mac,
  });
}
