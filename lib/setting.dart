import 'package:flutter/material.dart';

List<Map> SeetingData = [
  {
    'name': 'Birthday',
    'image': 'assets/illustrator/birthday.png',
    'class': (),
  },
  {
    'name': 'Notificatios',
    'image': 'assets/illustrator/birthday.png',
    'class': (),
  },
  {
    'name': 'About Us',
    'image': 'assets/illustrator/birthday.png',
    'class': (),
  },
  {
    'name': 'Contact Us',
    'image': 'assets/illustrator/birthday.png',
    'class': (),
  },
  {
    'name': 'FAQ',
    'image': 'assets/illustrator/birthday.png',
    'class': (),
  },
  {
    'name': 'Privacy & Policy',
    'image': 'assets/illustrator/birthday.png',
    'class': (),
  },
];
// List<IconData> icons = [
//   Icons.cake,
//   Icons.schedule,
//   Icons.calendar_today,
//   Icons.water_drop_outlined,
// ];

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

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
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                      ]),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  height: 590,
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
                        Container(
                          child: GridView.builder(
                            physics: const ScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: SeetingData.length,
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: 6,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromARGB(
                                                255, 214, 214, 214),
                                            width: 1.0))),
                                child: InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    leading: const Icon(Icons.person),
                                    minLeadingWidth: 0.0,
                                    title: Text(
                                      "${SeetingData[index]['name']}",
                                    ),
                                    // trailing: Switch(
                                    //     value: value, onChanged: onChanged),
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
