import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(CounterApplication());
}

class CounterApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Counter App Flutter',
      home: CounterScreenState(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CounterScreenState extends StatefulWidget{
  @override
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState>{
  int _count = 0;

  void incrementCount(){
    setState(() {
      _count++;
    });
  }

  void decrementCount(){
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Counter Screen"),),
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: (){
                  incrementCount();
                },
              ),
              Text("$_count"),
              FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: (){
                  decrementCount();
                },
              )
            ],
          ),
        )
      ),
    );
  }
}