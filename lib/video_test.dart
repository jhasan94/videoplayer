import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

class VideoTest extends StatefulWidget {
  final ChewieController chewieController;
  const VideoTest({required this.chewieController, Key? key}) : super(key: key);

  @override
  State<VideoTest> createState() => _VideoTestState();
}

class _VideoTestState extends State<VideoTest> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Chewie(
          controller: widget.chewieController,
        ));
  }

  @override
  void dispose() {
    super.dispose();
    widget.chewieController.dispose();
  }
}
