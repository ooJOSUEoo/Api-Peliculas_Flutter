
import 'package:api_peliculas/src/models/pelicula_model.dart';
import 'package:flutter/material.dart';

class MovieHorizontal extends StatelessWidget {

  final List<Pelicula> peliculas;

  MovieHorizontal({ required this.peliculas});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      height: _screenSize.height * 0.2,
      child: PageView(
        children: _targetas(),
      ),
    );
  }

  List<Widget> _targetas() {
    //regresa una lista de iterables
    return peliculas.map((pelicula){
      return Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage(pelicula.getPosterImg()),
              placeholder: AssetImage('assets/img/gif-loading.gif'),
              fit: BoxFit.cover,
              height: 160.0,
            ),
          ],
        ),
      );
    }).toList();
  }
}