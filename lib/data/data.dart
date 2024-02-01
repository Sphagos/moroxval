import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


/// Upcoming Instruction Appointments

class Appointments {
  final String date;
  final String time;
  final String title;
  final String subTitle;
  final Color color;

  Appointments({
    required this.color,
    required this.date,
    required this.time,
    required this.title,
    required this.subTitle,
  });
}

//  INSTRUCTION List OF DATA

List<Appointments> upcomingAppointmentsList = [
  Appointments(
    date: "12\nTue",
    time: DateFormat('hh:mm a').format(DateTime.now()),
    title: "Mr Rapula",
    subTitle: "Lobatse",
    color: const Color(0xff1C6BA4),
  ),
  Appointments(
    date: "12\nTue",
    time: DateFormat('hh:mm a').format(DateTime.now()),
    title: "Mr Tumisang",
    subTitle: "Gaborone",
    color: Color.fromARGB(255, 28, 164, 121),
  ),
];
