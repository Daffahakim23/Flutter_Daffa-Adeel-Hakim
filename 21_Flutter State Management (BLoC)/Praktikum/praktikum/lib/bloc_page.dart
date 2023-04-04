import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum/bloc/counter_bloc.dart';
import 'package:praktikum/bloc/counter_event.dart';
import 'Page/Header.dart';
import 'bloc/counter_state.dart';

class BlocPage extends StatefulWidget {
  const BlocPage({super.key, required this.title});
  final String title;

  @override
  State<BlocPage> createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: Scaffold(
        appBar: const Header(),
        body: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${state.value}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Increment());
                      },
                      child: const Text('Increment')),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Decrement());
                      },
                      child: const Text('Decrement')),
                ],
              ),
            );
          },
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
