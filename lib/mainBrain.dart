import 'redirection.dart';
import 'package:flutter/material.dart';
import 'package:quiz_defis/view/Quiz1/Quiz1.dart';
import 'package:quiz_defis/view/Quiz2/Quiz2.dart';
import 'package:quiz_defis/view/Quiz3/Quiz3.dart';

class MainBrain {
  List<Redirection> redirection = [
    Redirection('Quiz1', QUiz1()),
    Redirection('Quiz2', QUiz2()),
    Redirection('Quiz3', QUiz3())
  ];
  Functionredirection(String NomPage, function, context) {
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
}
