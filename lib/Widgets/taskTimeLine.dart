import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:tma/Widgets/detail.dart';

class Tasktimeline extends StatelessWidget {
  final Map<String, dynamic> detail;
  const Tasktimeline(this.detail);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          _buildTimeLine(detail['tlcolor']),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                detail['time'],
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              detail['title'].isNotEmpty
                  ? _buildCard(
                      detail['bgcolor'], detail['title'], detail['slot'])
                  : _buildCard(Colors.white, '', '')
            ],
          ))
        ],
      ),
    );
  }

  Widget _buildCard(Color bgcolor, String title, String slot) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5, top: 20),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Text(slot,
                  style: const TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)))
        ],
      ),
    );
  }

  Widget _buildTimeLine(Color color) {
    return Container(
      height: 20,
      width: 115,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        indicatorStyle: IndicatorStyle(
            indicatorXY: 0,
            width: 20,
            indicator: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: color, width: 5),
                  shape: BoxShape.circle),
            )),
        afterLineStyle: LineStyle(
          color: color,
          thickness: 2,
        ),
        isFirst: true,
      ),
    );
  }
}
