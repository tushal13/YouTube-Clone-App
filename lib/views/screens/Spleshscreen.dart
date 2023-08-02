import 'dart:async';
import 'package:flutter/material.dart';

class SPLASH_SCREEN extends StatefulWidget {
  const SPLASH_SCREEN({Key? key}) : super(key: key);

  @override
  State<SPLASH_SCREEN> createState() => _SPLASH_SCREENState();
}

class _SPLASH_SCREENState extends State<SPLASH_SCREEN> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('home');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: NetworkImage(
              "https://cdn.vox-cdn.com/thumbor/CQXisvpqlzIPjk4ETDokVBaQuqg=/0x0:1680x1050/1575x1050/filters:focal(840x525:841x526):no_upscale()/cdn0.vox-cdn.com/uploads/chorus_asset/file/9130449/YTLogo_old_new_animation.gif"),
          height: 150,
        ),
      ),
    );
  }
}
