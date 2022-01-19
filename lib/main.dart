import 'package:flutter/material.dart';
import 'package:quiz_defis/view/Quiz1/Quiz1.dart';
import 'package:quiz_defis/view/Quiz2/Quiz2.dart';
import 'package:quiz_defis/view/Quiz3/Quiz3.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Accueil du quiz',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  redirection(String NomPage, function, context) {
    return Center(
      child: ElevatedButton(
        child: Text(NomPage),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => function,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text('Accueil du quiz'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          redirection('Quiz1', QUiz1(), context),
          redirection('Quiz2', QUiz2(), context),
          redirection('Quiz3', QUiz3(), context),
        ],
      ),
    );
  }
}
