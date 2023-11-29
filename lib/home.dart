import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:musica/all_home_song.dart';

import 'all_singer.dart';

List<Map> recentlyData = [
  {
    'name': 'Birthday',
    'image': 'assets/illustrator/birthday.png',
    'class': (),
  },
  {
    'name': 'Schedule',
    'image': 'assets/illustrator/schedule.png',
    'class': const (),
  },
  {
    'name': 'Water Intake',
    'image': 'assets/illustrator/waterintake.png',
    'class': const (),
  },
  // {
  //   'name': 'Water Intake',
  //   'image': 'assets/illustrator/waterintake.png',
  //   'class': const (),
  // },
  // {
  //   'name': 'Event',
  //   'image': 'assets/illustrator/event.png',
  //   'class': const (),
  // },
  // {
  //   'name': 'Water Intake',
  //   'image': 'assets/illustrator/waterintake.png',
  //   'class': const (),
  // },
  // {
  //   'name': 'Water Intake',
  //   'image': 'assets/illustrator/waterintake.png',
  //   'class': const (),
  // },
  // {
  //   'name': 'Water Intake',
  //   'image': 'assets/illustrator/waterintake.png',
  //   'class': const (),
  // },
];

// List<IconData> icons = [
//   Icons.cake,
//   Icons.schedule,
//   Icons.calendar_today,
//   Icons.water_drop_outlined,
// ];s
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF3566),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Musica",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.account_circle,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Feature Today",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Builder(builder: (context) {
                                List images = [
                                  "assets/banner/1.png",
                                  "assets/banner/2.png",
                                  "assets/banner/3.png",
                                  "assets/banner/4.png",
                                  "assets/banner/5.png",
                                ];

                                return CarouselSlider(
                                  options: CarouselOptions(
                                    height: 150.0,
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                  ),
                                  items: images.map((imageUrl) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5.0),
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(6.0),
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                imageUrl,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  }).toList(),
                                );
                              }),
                            ]),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Recently Played",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                (const AllHomeSong())),
                                      );
                                    },
                                    child: const Text(
                                      "See All",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff4B8E96)),
                                    ),
                                  ),
                                ]),
                            const SizedBox(
                              height: 10,
                            ),
                            // Container(
                            //   padding: const EdgeInsets.all(1),
                            //   child: GridView.builder(
                            //     physics: const ScrollPhysics(),
                            //     scrollDirection: Axis.horizontal,
                            //     itemCount: recentlyData.length,
                            //     shrinkWrap: true,
                            //     gridDelegate:
                            //         const SliverGridDelegateWithFixedCrossAxisCount(
                            //       crossAxisCount: 8,
                            //     ),
                            //     itemBuilder: (context, index) {
                            //       return Container(
                            //         margin: const EdgeInsets.symmetric(
                            //             horizontal: 5.0),
                            //         child: Column(
                            //           crossAxisAlignment:
                            //               CrossAxisAlignment.start,
                            //           children: [
                            //             ClipRRect(
                            //               borderRadius:
                            //                   BorderRadius.circular(8),
                            //               child: Image.asset(
                            //                 "assets/all/badan_pe_sitee.jpg",
                            //                 width: 150.0,
                            //                 height: 100.0,
                            //                 fit: BoxFit.cover,
                            //               ),
                            //             ),
                            //             const SizedBox(
                            //               height: 10.0,
                            //             ),
                            //             const Text(
                            //               "Badan Pe Sita....",
                            //               style: TextStyle(
                            //                 fontSize: 14,
                            //               ),
                            //             )
                            //           ],
                            //         ),
                            //       );
                            //     },
                            //   ),
                            // ),
                            Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: ScrollController(),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                "assets/all/Gulabi_Aankhen.jpg",
                                                width: 150.0,
                                                height: 100.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          const Text(
                                            "Gulabi Aankhen....",
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              "assets/all/badan_pe_sitee.jpg",
                                              width: 150.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          const Text(
                                            "Badan Pe Sita....",
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              "assets/all/Mere_Sapno.jpg",
                                              width: 150.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          const Text(
                                            "Mere Sapno ....",
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Popular Singer",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                (const AllSingerPage())),
                                      );
                                    },
                                    child: const Text(
                                      "See All",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff4B8E96)),
                                    ),
                                  ),
                                ]),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: ScrollController(),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      width: 100,
                                      height: 130,
                                      color: const Color(0xffFCF3F3),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 30.0,
                                            backgroundImage: NetworkImage(
                                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "Kumar Sanu",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                            maxLines: 2,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      width: 100,
                                      height: 130,
                                      color: const Color(0xffFCF3F3),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 30.0,
                                            backgroundImage: NetworkImage(
                                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "Arijit Singh",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                            maxLines: 2,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      width: 100,
                                      height: 130,
                                      color: const Color(0xffFCF3F3),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 30.0,
                                            backgroundImage: NetworkImage(
                                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "Alka Yagnik",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                            maxLines: 2,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      width: 100,
                                      height: 130,
                                      color: const Color(0xffFCF3F3),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 30.0,
                                            backgroundImage: NetworkImage(
                                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "Shreya Ghoshal",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                            maxLines: 2,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Top 50",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                (const AllHomeSong())),
                                      );
                                    },
                                    child: const Text(
                                      "See All",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff4B8E96)),
                                    ),
                                  ),
                                ]),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: ScrollController(),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              "assets/all/Gulabi_Aankhen.jpg",
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          const Text(
                                            "Gulabi Aankhen....",
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              "assets/all/badan_pe_sitee.jpg",
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          const Text(
                                            "Badan Pe Sita....",
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              "assets/all/Mere_Sapno.jpg",
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          const Text(
                                            "Mere Sapno ....",
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              "assets/all/badan_pe_sitee.jpg",
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          const Text(
                                            "Badan Pe Sita....",
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Color(0xffEEEEEE),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                                      width: 50.0,
                                      height: 50.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Tujhe Dekha To...",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "dilwale dulhania le .....",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff93989D)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.skip_previous,
                                          size: 24.0,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.pause,
                                          size: 24.0,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.skip_next,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           (const SongPlayPage())),
                                  // );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: ProgressBar(
                                    barHeight: 7,
                                    progressBarColor: const Color(0xffFF3566),
                                    baseBarColor: const Color(0xffFF3566)
                                        .withOpacity(0.24),
                                    bufferedBarColor: const Color(0xffFF3566)
                                        .withOpacity(0.24),
                                    thumbColor: const Color(0xffFF3566),
                                    progress: const Duration(minutes: 2),
                                    buffered: const Duration(minutes: 2),
                                    total: const Duration(minutes: 5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
