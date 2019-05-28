import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'movieslider.dart';
import 'moviesmodel.dart';



class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  @override
  void initState() {
   // super.initState();
    animationController =
        new AnimationController(duration: Duration(seconds:20), vsync: this);
    animation =
        IntTween(begin: 0, end: photos.length-1 ).animate(animationController)
    ..addListener((){
      setState(() {
        index=animation.value;
      });
    });

    animationController.repeat(period: Duration(seconds: 20));
  }


  int index = 0;
  List<String> text=['John Wick 3',
    'Endgame',
    'Shazam',
    'Captain Marvel',
    'Detective Pikachu',
    'Dark Phoenix',
    'Spiderman:Far from Home',
    'Once upon a time in Hollywood',
    'Hobbs & Shaw'];
  List<String> photos = [
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


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    bestm(BMovies movie)=>TopMovies(
     image: movie.Image,
    );

    final scroll=Container(
      child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          //  children:bmovies1.map((movie)=>bestm(movie)).toList()
          children: bmovies1.map((movie)=>bestm(movie)).toList(),
        ),
      ) ,
    );

    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Netflix",
            style: TextStyle(color: Colors.red,fontSize: 28),
          )),
          backgroundColor: Colors.black,
      //    leading:Icon(Icons.notifications,color: Colors.red,) ,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications,color: Colors.red,size:25,),
            )
          ],
        //  toolbarOpacity: 0,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.black,

                child: Column(
                  children: <Widget>[
                  ImageData(photos[index], text[index]),
                  scroll
                  //  TopMovies()

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                 // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Continue Watching",
                    style: TextStyle(fontWeight: FontWeight.w900,
                    fontSize: 16),),
                    SizedBox(width: 180,),
                    Text("See All",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          fontSize: 16,color: Colors.red),)
                  ],
                ),

              ),
              netflixslider()

            ],
          ),
        ));
  }
}

class ImageData extends StatelessWidget {
  String image;
  String name;
  ImageData(this.image, this.name);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8.0)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          name,
          style: TextStyle(
            backgroundColor: Colors.black12,
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 33),
        ),
      ),
    );
  }
}
class TopMovies extends StatelessWidget{
 final String image;
  TopMovies({Key key,this.image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipOval(
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(0.5, 1.0),
                blurRadius: 5,
                color: Colors.white
              )
            ]
          ),


        ),
      ),
    );
  }

}

