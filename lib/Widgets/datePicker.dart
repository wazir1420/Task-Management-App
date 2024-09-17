import 'package:flutter/material.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  final weekDays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final day = ['11', '12', '13', '14', '15', '16', '17'];
  var selectedDate = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedDate = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      right: 6, left: 6, top: 25, bottom: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 0.5),
                  decoration: BoxDecoration(
                    color: selectedDate == index
                        ? Colors.grey.withOpacity(0.3)
                        : null,
                  ),
                  child: Column(
                    children: [
                      Text(weekDays[index],
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(day[index],
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
          itemCount: weekDays.length),
    );
  }
}
