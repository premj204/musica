import 'package:flutter/material.dart';

List<Map> FavouriteData = [
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

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        backgroundColor: Colors.black,
        // backgroundColor: const Color(0xffFF3566),
        title: Text("Favourites",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(30),
                    //     topRight: Radius.circular(30)),
                  ),
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
                            itemCount: FavouriteData.length,
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
                                      "${FavouriteData[index]['name']}",
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                    subtitle: Text(
                                      "${FavouriteData[index]['sub_name']}",
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                    trailing: Icon(
                                      Icons.more_vert,
                                      size: 20.0,
                                      color: Colors.white,
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
