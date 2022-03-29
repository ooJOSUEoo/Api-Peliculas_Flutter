import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:api_peliculas/src/models/pelicula_model.dart';

class PeliculasProvider {
  String _apiKey = '6c5b2f6d68fe085784ef659235cb7955';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Pelicula>> getEnCines() async {
    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
    });
    final resp = await http.get(url);
    final decodeData = json.decode(resp.body);
    //print(decodeData);
    //print(decodeData['results']);
    final peliculas = new Peliculas.fromJsonList(decodeData['results']);
    print(peliculas.items[2].title);
    return peliculas.items;
  }
}