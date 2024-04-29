import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ButtonsState();
  }
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20,),
          Container(
            width: 150,
            child: ElevatedButton(
              onPressed: () {
              },
              child: Text('Technical',
                style:TextStyle(color: Colors.black),),
            ),
          ),

          SizedBox(height: 20), // Add some space between buttons
          Container(
            width: 150,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Quality',
                style: TextStyle(color: Colors.black),),
            ),
          ),

          SizedBox(height: 20),
          Container(
            width: 150,
            child: ElevatedButton(
              onPressed: () {
              },
              child: Text('Safety',
                style: TextStyle(color: Colors.black),),
            ),
          ),

          SizedBox(height: 20),
          Container(
            width: 150,
            child: ElevatedButton(
              onPressed: () {
              },
              child: Text('Survey',
                  style:TextStyle(color: Colors.black)),
            ),
          ),

          SizedBox(height: 20),
          Container(
            width: 150,
            child: ElevatedButton(
              onPressed: () {
              },
              child: Text('Statutory',
                  style:TextStyle(color:Colors.black)),
            ),
          ),
        ],
      ),
    );
  }

}