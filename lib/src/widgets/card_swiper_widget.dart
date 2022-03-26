import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {

  final List<dynamic> peliculas;

  CardSwiper({ required this.peliculas });

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 10.0),
      //width: double.infinity,
      //height: 300.0,
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.7, // 70% de la pantalla
        itemHeight: _screenSize.height * 0.5, // 50% de la pantalla
        itemBuilder: (BuildContext context,int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              "https://via.placeholder.com/350x150",
              fit: BoxFit.fill,
            ),
          );
        },
        itemCount: peliculas.length,
        //pagination: SwiperPagination(),
        //control: SwiperControl(),
      ),
    );
  }
}