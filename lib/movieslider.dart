import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
final List<String> imglist=[
  "images/avenger.png",
  "images/dark.jpg",
  "images/hollywood.jpg",
  "images/dark.jpg",
  "images/johnwick.jpg",
  "images/pika.jpg",
  "images/shazam.jpg",
  "images/spiderman.jpg",
  "images/marvel.jpg",
  "images/hoobs.jpg"
];
//final Widget placeholder=container();
//List<hi> map<hi> hi passed in list for to
// accpet any type agrument like widget,string,class (model class)

class netflixslider extends StatelessWidget {
  final CarouselSlider mostwatch=CarouselSlider(
    autoPlay: true,
      viewportFraction: 0.9,
      aspectRatio: 2.4,
      enlargeCenterPage: true,
      items: imglist.map((url){
        return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(url),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                 offset: Offset(0.2, 1.0),
                  blurRadius: 2,
                    color: Colors.white

                )
              ]
            ),
           // child: Image.network(url),
          ),
        );
      }).toList());
  @override
  Widget build(BuildContext context) {

    return mostwatch;
  }
}

