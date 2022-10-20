import 'package:flutter/material.dart';
import 'package:flutter_counter/counter/controller/counter.dart';
//import 'package:flutter_counter/modules/home/controller/home_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
  final CounterBloc _counterBloc = CounterBloc();
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  //final HomeBloc _homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Text(
            //   _homeBloc.state.toString(),
            //   style: Theme.of(context).textTheme.headline4,
            // ),
            Text(
              _counterBloc.state.counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            )
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () {
        //   _homeBloc.incrementCounter();
        // },
        onPressed: () {
          _counterBloc.updateCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
