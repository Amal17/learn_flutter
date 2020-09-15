import 'package:belajar_multipage/animated_padding_page.dart';
import 'package:belajar_multipage/animated_switcher_page.dart';
import 'package:belajar_multipage/api_post_page.dart';
import 'package:belajar_multipage/button_aneh.dart';
import 'package:belajar_multipage/clip_path_page.dart';
import 'package:belajar_multipage/crcode.dart';
import 'package:belajar_multipage/gradient_opacity.dart';
import 'package:belajar_multipage/hero_page.dart';
import 'package:belajar_multipage/inkwell_page.dart';
import 'package:belajar_multipage/learn_card_page.dart';
import 'package:belajar_multipage/media_query_page.dart';
import 'package:belajar_multipage/music_player_page.dart';
import 'package:belajar_multipage/qrcode_scan_page.dart';
import 'package:belajar_multipage/second_page.dart';
import 'package:belajar_multipage/shared_preferences_page.dart';
import 'package:belajar_multipage/tab_bar_page.dart';
import 'package:belajar_multipage/text_field_page.dart';
import 'package:belajar_multipage/typograph_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page')),
      body: Center(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text('AppBar'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Card'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BelajarCardPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Text Field'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TextFieldPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Media Query'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MediaQueryPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('InkWell'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InkWellPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Hero Animation'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HeroPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Tab Bar'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TabBarPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('QR Code'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return QrcodePage();
                }));
              },
            ),
            RaisedButton(
              child: Text('QR Code Scan'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return QrcodeScanPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Button Aneh'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ButtonAnehPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Gradient Opacity'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return GradientOpacityPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Music Player'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MusicPlayerPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Typograph'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TypographPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('ClipPath'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ClipPathPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('API Post Data'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ApiPostPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Switch dan Animated Switcher'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AnimatedSwitcherPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Animated Padding'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AnimatedPaddingPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Shared Preferences'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SharedPreferencesPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
