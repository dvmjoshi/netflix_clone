import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
final List<String> imglist=[
  'https://initiate.alphacoders.com/images/100/cropped-1920-1080-1001619.jpg?5083'
  ,'https://initiate.alphacoders.com/images/100/cropped-1920-1080-1003220.png?3768'
  ,'https://initiate.alphacoders.com/images/100/cropped-1920-1080-1001407.jpg?558'
  ,'https://initiate.alphacoders.com/images/984/cropped-1920-1080-984322.jpg?3022'
  ,'https://initiate.alphacoders.com/images/971/cropped-1920-1080-971284.jpg?8655'
  ,'https://initiate.alphacoders.com/images/888/cropped-1920-1080-888330.jpg?4949'
  ,'https://initiate.alphacoders.com/images/100/cropped-1920-1080-1005138.jpg?9260'
  ,'https://initiate.alphacoders.com/images/100/cropped-1920-1080-1003275.jpg?9079'
  ,'https://initiate.alphacoders.com/images/990/cropped-1920-1080-990435.jpg?7247'
];
//final Widget placeholder=container();
//List<hi> map<hi> hi passed in list for to
// accpet any type agrument like widget,string,class (model class)

class netflixslider extends StatelessWidget {
  final CarouselSlider mostwatch=CarouselSlider(
    autoPlay: true,
      viewportFraction: 0.9,
      aspectRatio: 2.0,
      items: imglist.map((url){
        return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width:400,
            decoration: BoxDecoration(
              image: DecorationImage(image:NetworkImage(url),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                 offset: Offset(0.2, 1.0),
                  blurRadius: 2,
                  color: Colors.black

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

