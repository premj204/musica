import 'package:flutter/material.dart';

import 'Artist_all_list.dart';

List<Map> recentlyData = [
  {
    'name': 'Kumar Sanu',
  },
  {
    'name': 'Arijit Singh',
  },
  {
    'name': 'Alka Yagnik',
  },
  {
    'name': 'Shankar Mahadevan',
  },
  {
    'name': 'Sonu Nigam',
  },
  {
    'name': 'KailashKher',
  },
  {
    'name': 'Shreya Ghoshal',
  },
  {
    'name': 'Atif Aslam',
  },
  {
    'name': 'Kumar Sanu',
  },
  {
    'name': 'Arijit Singh',
  },
  {
    'name': 'Alka Yagnik',
  },
  {
    'name': 'Shankar Mahadevan',
  },
  {
    'name': 'Sonu Nigam',
  },
  {
    'name': 'KailashKher',
  },
  {
    'name': 'Shreya Ghoshal',
  },
  {
    'name': 'Atif Aslam',
  },
];

class AllSingerPage extends StatelessWidget {
  const AllSingerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF3566),
      appBar: AppBar(
        backgroundColor: const Color(0xffFF3566),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
        ),
        title: const Text(
          textAlign: TextAlign.center,
          "Popular singer",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
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
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Container(
                              child: GridView.builder(
                                physics: const ScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemCount: recentlyData.length,
                                shrinkWrap: true,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  // crossAxisSpacing: 1,
                                  childAspectRatio: 0.7,
                                ),
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: const EdgeInsets.all(10),

                                    // color: const Color(0xffFCF3F3),
                                    margin: const EdgeInsets.all(5),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  (const ArtistAllSong())),
                                        );
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey.shade600,
                                                  spreadRadius: 1,
                                                  blurRadius: 15)
                                            ]),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                                                width: 150.0,
                                                height: 100.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "${recentlyData[index]['name']}",
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                            maxLines: 2,
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
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
