import 'package:flutter/material.dart';
import 'package:tma/Widgets/constant.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  List<Map<String, dynamic>>? desc;
  num? done;
  bool isLast;

  Task(
      {this.icon,
      this.title,
      this.bgcolor,
      this.iconcolor,
      this.btncolor,
      this.left,
      this.desc,
      this.done,
      this.isLast = false});

  get dueDate => null;
  static List<Task> generateTasks() {
    return [
      Task(
          icon: Icons.person_rounded,
          title: 'Personal',
          bgcolor: kBlueLight,
          iconcolor: kBlueDark,
          btncolor: kBlue,
          left: 5,
          desc: [
            {
              'time': '9:00 AM',
              'title': 'Create a Video',
              'slot': '9:00 AM - 10:00 AM',
              'tlcolor': kBlueDark,
              'bgcolor': kBlueLight
            },
            {
              'time': '10:00 AM',
              'title': 'Watching a Movie',
              'slot': '10:00 AM - 11:00 AM',
              'tlcolor': kRedDark,
              'bgcolor': kRedLight
            },
            {
              'time': '11:00 AM',
              'title': '',
              'slot': '',
              'tlcolor': kYellowDark,
              'bgcolor': kYellowLight
            },
            {
              'time': '12:00 PM',
              'title': 'Go to the Gym',
              'slot': '12:00 PM - 1:00 PM',
              'tlcolor': kRedDark,
              'bgcolor': kRedLight
            },
            {
              'time': '1:00 PM',
              'title': 'Call with Client',
              'slot': '1:00 PM - 2:00 PM',
              'tlcolor': Colors.grey.withOpacity(0.3),
              'bgcolor': kYellowLight
            },
          ],
          done: 3,
          isLast: false),
      Task(
          icon: Icons.work,
          title: 'Work',
          bgcolor: kYellowLight,
          iconcolor: kYellowDark,
          btncolor: kYellow,
          left: 1,
          desc: [
            {
              'time': '1:00 PM',
              'title': 'My Office Work',
              'slot': '1:00 PM - 3:00 PM',
              'tlcolor': kBlueDark,
              'bgcolor': kBlueLight
            },
            {
              'time': '',
              'title': '',
              'slot': '',
              'tlcolor': kBlueDark,
              'bgcolor': kBlueLight
            },
            {
              'time': '',
              'title': 'Tea with Friends',
              'slot': '',
              'tlcolor': kBlueDark,
              'bgcolor': kBlueLight
            },
            {
              'time': '',
              'title': '',
              'slot': '',
              'tlcolor': kBlueDark,
              'bgcolor': kBlueLight
            },
          ],
          done: 4,
          isLast: false),
      Task(
          icon: Icons.favorite_rounded,
          title: 'health',
          bgcolor: kRedLight,
          iconcolor: kRedDark,
          btncolor: kRed,
          left: 2,
          done: 6,
          isLast: false),
      Task(
          icon: Icons.face_rounded,
          title: '',
          bgcolor: kBlueLight,
          iconcolor: kBlueDark,
          btncolor: kBlue,
          left: 5,
          done: 3,
          isLast: true)
    ];
  }
}
