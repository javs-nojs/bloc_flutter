import 'package:bloc_flutter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingBottomPage extends StatefulWidget {
  const FloatingBottomPage({super.key});

  @override
  State<FloatingBottomPage> createState() => _FloatingBottomPageState();
}

class _FloatingBottomPageState extends State<FloatingBottomPage> {
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(Incremented());
              setState(() {});
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () => setState(() {
              counterBloc.add(Decremented());
            }),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
