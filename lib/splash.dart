import 'dart:async';

import 'package:flutter/material.dart';

import 'first_page.dart';

class SpalshScrren extends StatefulWidget {
  const SpalshScrren({super.key});

  @override
  _SpalshScrrenState createState() => _SpalshScrrenState();
}

class _SpalshScrrenState extends State<SpalshScrren> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const First_Page())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image(image: AssetImage('assets/'), height: 50),
            Image(
              image: AssetImage('assets/logo/musica.png'),
              width: 200,
            )
          ],
        ));
    // child: ));
  }
}
