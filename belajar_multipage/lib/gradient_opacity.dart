import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GradientOpacityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Gradient Opacity')),
      body: Center(
        child: ShaderMask(
          shaderCallback: (rectangle) {
            return LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ).createShader(
                Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image(
            width: 500,
            image: NetworkImage(
                'https://wisatabagus.com/wp-content/uploads/2020/04/ranu-kumbolo.jpg'),
          ),
        ),
      ),
    ));
  }
}
