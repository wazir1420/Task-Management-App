import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tma/Widgets/constant.dart';
import 'package:tma/components/customText.dart';
import 'package:tma/components/upper_header.dart';
import 'package:tma/screens/menuPage.dart';
import 'package:tma/screens/privacySecurity.dart';

class settingPage extends StatefulWidget {
  const settingPage({super.key});

  @override
  State<settingPage> createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  bool isSwitched = true;
  bool isSound = true;
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
                padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    upperHeader('Settings', context, false,
                        page: const menuPage()),
                    SizedBox(
                      height: he * 0.035,
                    ),
                    Container(
                        padding: EdgeInsets.all(he * 0.006),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 208, 240, 1),
                                Color.fromARGB(255, 253, 179, 53),
                              ],
                            )),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[100],
                            ),
                            padding: EdgeInsets.all(he * 0.012),
                            child: Row(
                              children: [
                                Container(
                                  height: he * 0.07,
                                  width: he * 0.07,
                                  padding: EdgeInsets.all(he * 0.01),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey[300],
                                  ),
                                  child: ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                          const Color.fromARGB(
                                                  255, 224, 224, 224)
                                              .withOpacity(0.6),
                                          BlendMode.srcATop),
                                      child: const Icon(
                                          Icons.workspace_premium_outlined,
                                          size: 30,
                                          color: MyThemeColor.textColor)),
                                ),
                                SizedBox(width: he * 0.015),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        customText('Task', 26),
                                        SizedBox(width: he * 0.005),
                                        const Icon(Icons.add,
                                            size: 25,
                                            color: Color.fromARGB(
                                                255, 141, 127, 65))
                                      ],
                                    ),
                                    SizedBox(height: he * 0.0005),
                                    const Text(
                                        'Unlock our most exclusive features',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: MyThemeColor.textColor,
                                        ))
                                  ],
                                ),
                                Expanded(child: Container()),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromARGB(225, 22, 23, 22),
                                  size: 20,
                                )
                              ],
                            ))),
                    SizedBox(
                      height: he * 0.025,
                    ),
                    Row(
                      children: [
                        if (isSound == true)
                          const Icon(Icons.volume_up_outlined,
                              size: 25, color: MyThemeColor.textColor)
                        else
                          const Icon(Icons.volume_off_outlined,
                              size: 25, color: MyThemeColor.textColor),
                        SizedBox(width: he * 0.015),
                        const Text('Sounds',
                            style: TextStyle(
                              fontSize: 18,
                              color: MyThemeColor.textColor,
                            )),
                        Expanded(child: Container()),
                        CupertinoSwitch(
                            value: isSound,
                            onChanged: (bool value) {
                              setState(() {
                                isSound = value;
                              });
                            })
                      ],
                    ),
                    SizedBox(
                      height: he * 0.025,
                    ),
                    Row(children: [
                      if (isSwitched == true)
                        const Icon(Icons.notifications_active_outlined,
                            size: 25, color: MyThemeColor.textColor)
                      else
                        const Icon(Icons.notifications_none_outlined,
                            size: 25, color: MyThemeColor.textColor),
                      SizedBox(width: he * 0.015),
                      const Text('Notifications',
                          style: TextStyle(
                              fontSize: 18, color: MyThemeColor.textColor)),
                      Expanded(child: Container()),
                      CupertinoSwitch(
                          value: isSwitched,
                          onChanged: (bool value) {
                            setState(() {
                              isSwitched = value;
                            });
                          })
                    ]),
                    SizedBox(
                      height: he * 0.025,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PrivacySecurity()));
                        },
                        child: Row(
                          children: [
                            const Icon(Icons.lock_open_outlined,
                                size: 25, color: MyThemeColor.textColor),
                            SizedBox(width: he * 0.015),
                            const Text('Privacy & Security',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: MyThemeColor.textColor)),
                            Expanded(child: Container()),
                            const Icon(Icons.arrow_forward_ios,
                                color: MyThemeColor.textColor, size: 20)
                          ],
                        )),
                    SizedBox(
                      height: he * 0.025,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: GestureDetector(
                            onTap: () {},
                            child: Row(children: [
                              const Icon(Icons.info_outline,
                                  size: 25, color: MyThemeColor.textColor),
                              SizedBox(width: he * 0.015),
                              const Text(
                                'About App',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: MyThemeColor.textColor),
                              ),
                              Expanded(child: Container()),
                              const Icon(Icons.arrow_forward_ios,
                                  color: MyThemeColor.textColor, size: 20)
                            ]))),
                    SizedBox(
                      height: he * 0.025,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(Icons.help_outline,
                                size: 25, color: MyThemeColor.textColor),
                            SizedBox(width: he * 0.015),
                            const Text(
                              'Help & Support',
                              style: TextStyle(
                                  fontSize: 18, color: MyThemeColor.textColor),
                            ),
                            Expanded(child: Container()),
                            const Icon(Icons.arrow_forward_ios,
                                color: MyThemeColor.textColor, size: 20)
                          ],
                        )),
                    SizedBox(height: he * 0.025),
                    const Divider(color: Colors.blue, thickness: 1),
                    SizedBox(height: he * 0.02),
                    GestureDetector(
                        onTap: () {},
                        child: const Text('Sign Out',
                            style: TextStyle(
                                fontSize: 17, color: MyThemeColor.textColor))),
                    SizedBox(
                      height: he * 0.02,
                    ),
                    const Text('VERSION:1.2.356',
                        style: TextStyle(
                            fontSize: 17, color: MyThemeColor.textColor))
                  ],
                ))));
  }
}
