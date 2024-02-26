import 'package:flutter/material.dart';

List<Map> SeetingData = [
  {
    'name': 'Profile',
    'class': (),
  },
  {
    'name': 'Notificatios',
    'class': (),
  },
  {
    'name': 'About Us',
    'class': (),
  },
  {
    'name': 'Contact Us',
    'class': (),
  },
  {
    'name': 'FAQ',
    'class': (),
  },
  {
    'name': 'Privacy & Policy',
    'class': (),
  },
  {
    'name': 'Sign Out',
    'class': (),
  },
];
List<IconData> icons = [
  Icons.person,
  Icons.notifications,
  Icons.description,
  Icons.call,
  Icons.question_answer,
  Icons.policy,
  Icons.logout,
];

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        backgroundColor: Colors.black,
        title: Text("Setting",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.black,
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
                                            color: Colors.white, width: 1.0))),
                                child: InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                    minLeadingWidth: 0.0,

                                    title: Text(
                                      "${SeetingData[index]['name']}",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
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
