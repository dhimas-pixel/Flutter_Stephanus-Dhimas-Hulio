import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:section_21/bloc/history_bloc/history_bloc.dart';
import 'package:section_21/model/history_model.dart';

class CallPage extends StatelessWidget {
  final String getName;
  final String getNumber;

  const CallPage({Key? key, required this.getName, required this.getNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd/MM/yy, kk:mm').format(now);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 12, 148, 30),
                  Colors.greenAccent,
                ],
              ),
            ),
            child: BlocBuilder<HistoryBloc, HistoryState>(
              builder: (ctx, state) {
                return Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 55,
                      child: Text(
                        getName.substring(0, 1),
                        style: TextStyle(fontSize: 50),
                      ),
                      backgroundColor: Colors.red,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      getName,
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontFamily: "GrapeNuts",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      getNumber,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 180)),
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 370,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: <Widget>[
                          GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 3,
                            children: [
                              CircleIcons(
                                  iconData: Icons.record_voice_over,
                                  nameIcon: "Record"),
                              CircleIcons(
                                  iconData: Icons.video_call,
                                  nameIcon: "Video Call"),
                              CircleIcons(
                                  iconData: Icons.bluetooth_searching_outlined,
                                  nameIcon: "Bluetooth"),
                              CircleIcons(
                                  iconData: Icons.speaker_phone,
                                  nameIcon: "Speaker"),
                              CircleIcons(
                                  iconData: Icons.mic_off, nameIcon: "Mic Off"),
                              CircleIcons(
                                  iconData: Icons.keyboard, nameIcon: "Keypad"),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 12)),
                          CircleAvatar(
                            radius: 38,
                            backgroundColor: Colors.red,
                            child: IconButton(
                              onPressed: () async {
                                ctx.read<HistoryBloc>().add(
                                      AddHistory(
                                        historyModel: HistoryModel(
                                            name: getName,
                                            number: getNumber,
                                            date: formattedDate),
                                      ),
                                    );
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.call_end,
                                size: 33,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class CircleIcons extends StatelessWidget {
  final IconData iconData;
  final String nameIcon;
  const CircleIcons({Key? key, required this.iconData, required this.nameIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: Colors.white,
          size: 35,
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Text(
          nameIcon,
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
