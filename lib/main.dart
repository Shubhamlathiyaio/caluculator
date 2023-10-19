import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List a = [
    'CE', '/', 'x', '-',
    '7', '8', '9', '+',
    '4', '5', '6', '=',
    '1', '2', '3', '0'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.red,
                  alignment: Alignment.centerRight,
                  child: Text('10+12',style: TextStyle(fontSize: 48)),
            )),
            Expanded(
                child: Container(
              color: Colors.purple,
                  alignment: Alignment.centerRight,
                  child: Text('10+12',style: TextStyle(fontSize: 36)),
            )),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.blue,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: a.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.green,
                        alignment: Alignment.center,
                        child: Text('${a[index]}',style: TextStyle(fontSize: 32)),
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
