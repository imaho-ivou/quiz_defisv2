import 'package:flutter/material.dart';
import 'package:quiz_defis/mainBrain.dart';

MainBrain mainBrain = MainBrain();

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Accueil du quiz',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          mainBrain.Functionredirection(mainBrain.redirection[0].nomPage,
              mainBrain.redirection[0].function, context),
          mainBrain.Functionredirection(mainBrain.redirection[1].nomPage,
              mainBrain.redirection[1].function, context),
          mainBrain.Functionredirection(mainBrain.redirection[2].nomPage,
              mainBrain.redirection[2].function, context),
        ],
      ),
    );
  }
}
