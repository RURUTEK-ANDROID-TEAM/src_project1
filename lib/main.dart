import 'package:flutter/material.dart';
import 'package:src_project/Results.dart';


import 'data/quiz_ques.dart'; // Import the questions list

void main() => runApp(const SRCApp());

class SRCApp extends StatelessWidget {
  const SRCApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: const Quiz(),
      ),
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _questionIndex = 0;
  List<String> _selectedAnswers = [];

  void _nextQuestion(String selectedAnswer) {
    setState(() {
      _selectedAnswers.add(selectedAnswer);
      if (_questionIndex < QuestionsList.questions.length - 1) {
        _questionIndex++;
      } else {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Result(QuestionsList.questions, _selectedAnswers),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${_questionIndex + 1}. ${QuestionsList.questions[_questionIndex]['question']}'),
          SizedBox(height: 20),
          ...((QuestionsList.questions[_questionIndex]['options']) as List<String>).map((option) {
            return Container(
              width: 100,
              child: Padding(
                padding: EdgeInsets.all(8.0), // Adjust padding as needed
                child: OutlinedButton(
                  onPressed: () {
                    // Handle option selection
                    _nextQuestion(option); // Navigate to the next question
                  },
                  child: Text(
                    option,
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
