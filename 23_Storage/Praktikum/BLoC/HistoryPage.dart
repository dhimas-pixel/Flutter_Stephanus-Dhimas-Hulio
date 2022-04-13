import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:section_21/bloc/history_bloc/history_bloc.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
        child: BlocBuilder<HistoryBloc, HistoryState>(
          builder: (BuildContext context, state) {
            return ListView.separated(
              itemBuilder: (ctx, i) {
                return ListTile(
                  leading: Icon(
                    Icons.phone_missed_rounded,
                    color: Colors.red,
                    size: 40,
                  ),
                  title: Text(state.history[i].name),
                  subtitle: Text(state.history[i].number),
                  trailing: Text(state.history[i].date),
                );
              },
              separatorBuilder: (ctx, i) {
                return Divider();
              },
              itemCount: state.history.length,
            );
          },
        ),
      ),
    );
  }
}
