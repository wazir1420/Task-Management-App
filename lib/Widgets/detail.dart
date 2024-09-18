import 'package:flutter/material.dart';
import 'package:tma/modals/Task_modal.dart';
import 'package:tma/Widgets/taskTimeLine.dart';
import 'package:tma/Widgets/task_title.dart';

import 'datePicker.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  DetailPage(this.task);

  @override
  Widget build(BuildContext context) {
    final detailList = task.desc;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Datepicker(), TaskTitle()],
              ),
            ),
          ),
          detailList == null
              ? SliverFillRemaining(
                  child: Container(
                      color: Colors.white,
                      height: 200,
                      child: Center(
                        child: Text(
                          'No Tasks Yet',
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade900),
                        ),
                      )),
                )
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (context, index) => Tasktimeline(detailList[index]),
                      childCount: detailList.length))
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: 90,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        iconSize: 20,
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.more_vert,
            color: Colors.grey,
          ),
          onPressed: () {},
          iconSize: 20,
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '${task.title} Task',
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'You have ${task.left} tasks left to do',
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
