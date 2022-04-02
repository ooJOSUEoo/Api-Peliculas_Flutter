import 'package:api_peliculas/src/models/pelicula_model.dart';
import 'package:flutter/material.dart';

class PeliculaDetalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Object? pelicula = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      body: Center(
        child: Text(pelicula  is Pelicula ? pelicula.title : 'No hay pelicula'),
      ),
    );
  }
}