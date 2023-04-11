import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;

  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 52, right: 52, top: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 56, 23, 23).withOpacity(0.1),
          elevation: 0,
          foregroundColor: Color.fromARGB(255, 43, 12, 10),
          shape: const StadiumBorder(),
          side: BorderSide.none,
        ),
        onPressed: () => selectHandler(),
        child: Text(answerText),
      ),
    );
  }
}