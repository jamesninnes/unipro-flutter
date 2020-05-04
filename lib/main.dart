import 'package:flutter/material.dart';
import 'package:unipro/views/flash_deck/flash_deck_view.dart';
import 'package:unipro/views/gallery/gallery_view.dart';
import 'package:unipro/views/landing/landing_view.dart';
import 'package:unipro/views/login/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unipro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingView(),
        '/login': (context) => LoginView(),
        '/gallery': (context) => GalleryView(),
        '/deck': (context) => FlashDeckView(),
      },
    );
  }
}
