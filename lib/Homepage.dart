import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Detailpage.dart';
import 'PopularMovie.dart';
import 'PopularMovieData.dart';
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
    'https://boundingintocomics.com/files/2019/03/2019.03.21-05.04-boundingintocomics-5c93c41d43700.png'
    ,'https://initiate.alphacoders.com/images/100/cropped-1920-1080-1003220.png?3768'
    ,
    'https://in.bookmyshow.com/entertainment/wp-content/uploads/2019/04/Shazam_960x540.jpg'
    ,
    'https://cdn.vox-cdn.com/thumbor/rW8rg4GByXrm84_qqn9sUgqA3w0=/0x145:1688x1809/1200x480/filters:focal(726x441:996x711)/cdn.vox-cdn.com/uploads/chorus_image/image/61461869/captain_marvel_poster_1688.1537366019.jpg'
    ,'https://initiate.alphacoders.com/images/971/cropped-1920-1080-971284.jpg?8655'
    ,
    'https://s3-us-east-2.amazonaws.com/redefined/wp-content/uploads/2019/02/28014226/dark-phoenix-DarkPhoenix_OneSheet2_rgb.jpg'
    ,
    'http://t2.gstatic.com/images?q=tbn:ANd9GcQ-hK4oBcmE5BZk71a4wdZ0xe7w2aru9fUtTTcT_kDZDrYGe4E8'
    ,
    'https://img.thedailybeast.com/image/upload/c_crop,d_placeholder_euli9k,h_1687,w_3000,x_0,y_0/dpr_1.5/c_limit,w_1044/fl_lossy,q_auto/v1558479602/190520-Porton-Once-Upon-a-Time-in-Hollywood-tease_fla7w4'
    ,
    'https://scontent-sin6-2.cdninstagram.com/vp/90b6f0d13a4306003da98cd10d82cea4/5D1D5B52/t51.2885-15/e35/50618325_2328246480765217_2306485043007719624_n.jpg?_nc_ht=scontent-sin6-2.cdninstagram.com&se=7&ig_cache_key=MTk3ODA5Nzg1NDQwMDQ1NzI0Mg%3D%3D.2'

  ];


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }


  @override

  Widget build(BuildContext context) {
    Popmovies(PopularList plist) =>
        InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Detailpage(list: plist,)),
              );
            },
            child: PopularMovie(
              image: plist.image,
              name: plist.name,
              rating: plist.rating,

            ));
    bestm(BMovies movie)=>TopMovies(
      image: movie.Image,
    );

    final popularscroll = Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          //  children:bmovies1.map((movie)=>bestm(movie)).toList()
          children: populartlist.map((pl) => Popmovies(pl)).toList(),
        ),
      ),
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
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Netflix",
            style: TextStyle(color: Colors.red,fontSize: 28),
          ),
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
                          fontSize: 16, color: Colors.white),),
                    SizedBox(width: 180,),
                    Text("See All",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          fontSize: 16, color: Colors.red),)
                  ],
                ),

              ),
              netflixslider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Popular On Netflix",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          fontSize: 16, color: Colors.white),),
                    SizedBox(width: 180,),
                    Text("See All",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          fontSize: 16,color: Colors.red),)
                  ],
                ),

              ),
              popularscroll

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
      height: 180,
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
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
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
          height: 60,
          width: 60,
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

