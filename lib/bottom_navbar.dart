import 'package:flutter/material.dart';
import 'package:musica/favourite.dart';
import 'package:musica/setting.dart';

import 'home.dart';
import 'playlists.dart';
import 'searchpage.dart';

class BottomTabpage extends StatefulWidget {
  const BottomTabpage({super.key});

  @override
  State<BottomTabpage> createState() => _BottomTabpageState();
}

class _BottomTabpageState extends State<BottomTabpage> {
  int currenttab = 0;
  List<Map> tabsData = [
    {'name': 'Home', 'class': const HomePage()},
    {'name': 'Playlists', 'class': PlayList()},
    {'name': 'search', 'class': const Search_Page()},
    {'name': 'favourite', 'class': const FavouritePage()},
    {'name': 'setting', 'class': const SettingPage()},
  ];
  List<IconData> icons = [
    Icons.home_outlined,
    Icons.queue_music,
    Icons.search,
    Icons.favorite_border_outlined,
    Icons.settings,
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currebtScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currebtScreen),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        height: 60,
        // shadowColor: Colors.black,
        padding: const EdgeInsets.all(0),
        shape: const CircularNotchedRectangle(),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,

            // borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(35),
            //     topRight: Radius.circular(35)),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            for (int i = 0; i < tabsData.length; i++) ...[
              GestureDetector(
                onTap: () {
                  setState(() {
                    currebtScreen = tabsData[i]['class'];
                    currenttab = i;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      size: 25,
                      icons[i],
                      color: currenttab == i ? Colors.red : null,
                    ),
                  ],
                ),
              ),
            ],
          ]),
        ),
      ),
    );
  }
}
