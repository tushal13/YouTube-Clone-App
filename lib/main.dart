import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/controllers/homecontrollers.dart';
import 'package:youtube/views/screens/Home_page.dart';
import 'package:youtube/views/screens/videoplayear.dart';

import 'views/screens/Spleshscreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeController(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => SPLASH_SCREEN(),
        'home': (context) => const HomePage(),
        'videoplayer': (context) => VideoPlayerPage(),
      },
    );
  }
}
