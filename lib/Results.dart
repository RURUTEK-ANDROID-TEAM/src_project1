import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Result extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final List<String> selectedAnswers;

  const Result(this.questions, this.selectedAnswers, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final questionNumber = index + 1;
                final question = questions[index]['question'];
                final selectedAnswer = selectedAnswers[index];
                return ListTile(
                  title: Text('$questionNumber. $question'),
                  subtitle: Text('Selected Answer: $selectedAnswer'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Remarks'),

                Container(
                  width: 400,
                  height: 100,

                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Add Remarks...',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors
                            .black87), // Change focused border color here
                      ),
                    ),
                    cursorColor: Colors.black54,
                  ),
                ),
                SizedBox(height: 8,),
                // Wrap the Container with Padding and adjust the padding as needed
                Padding(
                  padding: EdgeInsets.only(bottom: 36.0),
                  // Adjust top padding here
                  child: Container(
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt, color: Colors.black87,),
                      label: Text(
                        'Upload Image',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}