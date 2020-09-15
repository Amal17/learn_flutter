import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('Belajar Hero Animation',
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Hero2Page();
          }));
        },
        child: Hero(
          tag: 'PP',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://vignette.wikia.nocookie.net/vsbattles/images/3/37/Doraemon_renderImproved.png/revision/latest/scale-to-width-down/340?cb=20190730170109'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Hero2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Belajar Hero Animation',
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Hero(
          tag: 'PP',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://vignette.wikia.nocookie.net/vsbattles/images/3/37/Doraemon_renderImproved.png/revision/latest/scale-to-width-down/340?cb=20190730170109'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
