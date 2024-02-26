import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class SongPlayPage extends StatelessWidget {
  const SongPlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          constraints:
              BoxConstraints.expand(height: 867, width: double.infinity),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/all/bg_song.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Spacer(),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(color: Colors.black),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Tujhe Dekha to...",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Dilwale Dulhania Le Jayenge",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_outline,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.playlist_add,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    ProgressBar(
                      barHeight: 7,
                      timeLabelTextStyle: TextStyle(color: Colors.white),
                      progressBarColor: const Color(0xffFFffff),
                      baseBarColor: const Color(0xffcbcbcb),
                      bufferedBarColor:
                          const Color(0xffcbcbcb).withOpacity(0.24),
                      thumbColor: Colors.white,
                      progress: const Duration(minutes: 2),
                      buffered: const Duration(minutes: 2),
                      thumbGlowColor: Colors.white,
                      total: const Duration(minutes: 5),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.repeat_outlined,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.skip_previous,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.pause_circle,
                            size: 50.0,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.skip_next,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_up,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Open List",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
