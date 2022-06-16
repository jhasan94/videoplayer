import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:imagedownloader/video_test.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Flutter Video Player Demo'),
          centerTitle: true,
        ),
        body: Scaffold(
            body: Container(
          //       'https://hink-test-dev.s3.ap-southeast-1.amazonaws.com/posts/1f61c3e9-4d35-423b-a35e-bda4db7d9ec8/original.mp4'),
          height: 400,
          width: 400,
          child: VideoTest(
            chewieController: ChewieController(
                videoPlayerController: VideoPlayerController.network(
                    "https://hink-test-dev.s3.ap-southeast-1.amazonaws.com/posts/1f61c3e9-4d35-423b-a35e-bda4db7d9ec8/original.mp4"),
                aspectRatio: 1,
                autoInitialize: true,
                autoPlay: false,
                looping: false,
                errorBuilder: (context, errorMessage) {
                  return Center(
                    child: Text(
                      errorMessage,
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                }),
          ),
        )),
      ),
    );
  }
}

