import 'dart:async';

import 'package:flutter/material.dart';
 
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
 
import 'package:video_player/video_player.dart';

import '../Core/Utils/AppRouter.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  late VideoPlayerController _controller;
  bool _visible = false;
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    _controller = VideoPlayerController.asset("Assets/Videos/video.mp4");
    _controller.initialize().then((value) {
       _controller.setLooping(true);
      Timer(Duration(seconds: 21), () {
        setState(() {
          _controller.play();
          _visible = true;
        });
      });
    });

    void  NavigateToHomeScreen() {
    Future.delayed(const Duration(seconds: 21), () {
      
      GoRouter.of(context).push(AppRouter.KhomeScreen);
    });
  }
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
     
    }

  _getVideoBackground() {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: Duration(seconds: 21),
      child: VideoPlayer(_controller),
    );
  }


 @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Center(
        child: Stack(
          children: <Widget>[
            _getVideoBackground(),
          ],
        ),
      ),);
  }
}
