import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_management/counter_model.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(builder: (context, counterModel, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counterModel.count.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterModel.down();
          },
          tooltip: 'Mengurangi nilai counter',
          child: Icon(Icons.remove_circle_sharp),
        ),
      );
    });
  }
}
