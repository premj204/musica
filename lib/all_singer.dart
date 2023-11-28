import 'package:flutter/material.dart';

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
                                  childAspectRatio: 0.9,
                                ),
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: const EdgeInsets.all(10),
                                    width: 70,
                                    height: 70,
                                    color: const Color(0xffFCF3F3),
                                    margin: const EdgeInsets.all(5),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        children: [
                                          const CircleAvatar(
                                            radius: 25.0,
                                            backgroundImage: NetworkImage(
                                              "https://i.ibb.co/PGv8ZzG/me.jpg",
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
