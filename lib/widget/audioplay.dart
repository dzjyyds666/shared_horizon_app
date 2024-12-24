import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';

import 'banner.dart';

class audio_player extends StatefulWidget {
  final String audioUrl;

  const audio_player({Key? key, required this.audioUrl});

  @override
  State<StatefulWidget> createState() => _audio_playerState();
}

class _audio_playerState extends State<audio_player> {
  final AudioPlayer _player = AudioPlayer();

  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  bool isPlaying = false;
  List<String> bannerList = [
    "https://images.pexels.com/photos/305821/pexels-photo-305821.jpeg?auto=compress&cs=tinysrgb&w=1200",
    "https://images.pexels.com/photos/5799379/pexels-photo-5799379.jpeg?auto=compress&cs=tinysrgb&w=1200",
  ];

  @override
  void initState() {
    super.initState();
    _player.setUrl(widget.audioUrl);

    _player.playerStateStream.listen((state) {
      if (state.processingState == ProcessingState.completed) {
        _player.seek(Duration.zero);
        _player.pause();
      }
    });

    _player.positionStream.listen((position) {
      setState(() {
        _position = position;
      });
    });

    _player.durationStream.listen((duration) {
      setState(() {
        _duration = duration ?? Duration.zero;
      });
    });
  }

  Future _play() async {
    _player.play();
    setState(() {
      isPlaying = true;
    });
  }

  Future _pause() async {
    _player.pause();
    setState(() {
      isPlaying = false;
    });
  }

  Future _stop() async {
    _player.stop();
    setState(() {
      isPlaying = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: ScreenUtil().screenWidth,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Color(0xfff091227)),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                size: 24,
                color: Colors.white,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Audio Player',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20.sp, color: Colors.white),
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          CarouseSliderWidget(bannerList: bannerList, width: 261, height: 261,autoPlay: false,),

          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'audio name',
                    style: TextStyle(fontSize: 24.sp, color: Colors.white),
                  ),
                  Text(
                    'author',
                    style: TextStyle(
                        fontSize: 16.sp, color: Colors.white.withOpacity(0.5)),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '00:00',
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
                Text(
                  '03:01',
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          // 进度条
          Slider(
              activeColor: Colors.white,
              inactiveColor: Colors.white.withOpacity(0.5),
              value: _position.inSeconds.toDouble(),
              max: _duration.inSeconds.toDouble(),
              onChanged: (double value) {}),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.skip_previous_outlined,
                size: 24,
                color: Colors.white,
              ),
              isPlaying
                  ? Icon(
                      Icons.pause_outlined,
                      size: 24,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.play_arrow_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
              Icon(
                Icons.skip_next_outlined,
                size: 24,
                color: Colors.white,
              )
            ],
          ))
        ],
      ),
    )));
  }
}
