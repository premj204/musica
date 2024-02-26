import 'package:flutter/material.dart';

List<Map> SearchData = [
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

class Search_Page extends StatelessWidget {
  const Search_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[200]!,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                initialValue: null,
                                decoration: const InputDecoration.collapsed(
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  hintText: "",
                                ),
                                onFieldSubmitted: (value) {},
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.search),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: GridView.builder(
                          physics: const ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: SearchData.length,
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
                                    "${SearchData[index]['name']}",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  subtitle: Text(
                                    "${SearchData[index]['sub_name']}",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
