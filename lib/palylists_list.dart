import 'package:flutter/material.dart';

List<Map> PlayListData = [
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Abhi Na Jao Chhod Kar',
    'sub_name': 'Asha Bhosle, Mohammed Rafi',
  },
  {
    'name': 'Kya Hua Tera Vada',
    'sub_name': 'Mohammed Rafi, Sushma Shrestha',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
  {
    'name': 'Chura Liya Hai Tumne Jo Dil Ko',
    'sub_name': 'Mohammed Rafi, Asha Bhosle',
  },
];

class ListPlaylist extends StatelessWidget {
  const ListPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF3566),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Playlist Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    scrollDirection: Axis.vertical,
                    physics: const ScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: GridView.builder(
                            physics: const ScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: PlayListData.length,
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: 6,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 2),
                                child: InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    title: Text(
                                      "${PlayListData[index]['name']}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                    subtitle: Text(
                                      "${PlayListData[index]['sub_name']}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                    trailing: Icon(
                                      Icons.more_vert,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
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
