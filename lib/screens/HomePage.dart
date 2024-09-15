import 'package:flutter/material.dart';
import 'package:tma/Widgets/constant.dart';
import 'package:tma/Widgets/premium.dart';
import 'package:tma/Widgets/tasks.dart';
import 'package:tma/screens/ProfilePage.dart';
import 'package:tma/screens/menuPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomepPageState();
}

class _MyHomepPageState extends State<MyHomePage> {
  List<Widget> pages = [HomePage(), ProfilePage()];
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(0, 5),
              )
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
            backgroundColor: kwhite,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded, size: 30),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded, size: 30),
                label: 'Person',
              )
            ],
            onTap: (index) {
              setState(() {
                activeindex = index;
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: kdark,
        child: Icon(
          Icons.add,
          color: klightgrey,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: pages[activeindex],
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kwhite,
    elevation: 0,
    title: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, top: 5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: klightgrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/back.jpg'),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          'Hello, Wazir',
          style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        )
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.grey.shade600,
          size: 35,
        ),
        onPressed: () {
          Navigator.push(context as BuildContext,
              MaterialPageRoute(builder: (context) => menuPage()));
        },
      ),
    ],
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.only(right: 8.0, left: 8.0, top: 20.0, bottom: 10.0),
          child: GoPremium(),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            'Tasks',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ),
        ),
        Expanded(child: Tasks())
      ],
    );
  }
}
