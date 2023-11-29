import 'package:flutter/material.dart';

List<Map> ArtistAllSongData = [
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

class ArtistAllSong extends StatelessWidget {
  const ArtistAllSong({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Mohammed Rafi",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      backgroundColor: const Color(0xffFF3566),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: []),
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
                            itemCount: ArtistAllSongData.length,
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
                                      "${ArtistAllSongData[index]['name']}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                    subtitle: Text(
                                      "${ArtistAllSongData[index]['sub_name']}",
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
