import 'package:flutter/material.dart';

import 'onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingPage(),

    );
  }
}


class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("We are worker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Worker',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            ElevatedButton(
              onPressed: (){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const OnBoardingPage()),
        );

              },
              child: const Text('Go to onboarding screen'),
            ),
          ],
        ),
      ),
    );
  }
}