import 'dart:math';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:section_21/bloc/counter_bloc.dart';
import 'package:section_21/contacts_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List colors = [
      Colors.red,
      Colors.green,
      Colors.brown,
      Colors.blue,
      Colors.orange
    ];
    Random _random = Random();

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (BuildContext context, state) {
            return ListView.separated(
              itemBuilder: (ctx, i) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      state.contacts[i].name.substring(0, 1),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: colors[_random.nextInt(5)],
                  ),
                  title: Text(state.contacts[i].name),
                  subtitle: Text(state.contacts[i].number),
                );
              },
              separatorBuilder: (ctx, i) {
                return Divider();
              },
              itemCount: state.contacts.length,
            );
          },
        ),
      ),
    );
  }
}
