import 'package:counter_app_statemanagement/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final counter = Provider.of<Counter>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter mit Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "so oft wurde der Button gedrückt:",
            ),
            Text(
              '${counter.getCounter()}',
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: counter.increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: counter.decrement,
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
