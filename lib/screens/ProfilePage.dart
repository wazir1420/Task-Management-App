import 'package:flutter/material.dart';
import 'package:tma/Widgets/constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyThemeColor.backgroundColor,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(
            left: he * 0.03,
            right: he * 0.03,
            top: he * 0.03,
            bottom: he * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 0.05,
            ),
            Text(
              'First Name',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            SizedBox(
              height: he * 0.045,
              child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10, top: 12),
                      hintText: 'Wazir',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: MyThemeColor.textColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: MyThemeColor.textColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: MyThemeColor.textColor,
                          )))),
            ),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Last Name',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            SizedBox(
              height: he * 0.045,
              child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10, top: 12),
                      hintText: 'Tatheer',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: MyThemeColor.textColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: MyThemeColor.textColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: MyThemeColor.textColor,
                          )))),
            ),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Username',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  height: he * 0.045,
                  width: he * 0.20,
                  child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 10, top: 12),
                          hintText: 'tatheer123',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: MyThemeColor.textColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: MyThemeColor.textColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: MyThemeColor.textColor,
                              )))),
                ),
                Expanded(child: Container()),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Change Username',
                      style: TextStyle(color: Colors.blueAccent),
                    )),
                Icon(
                  Icons.edit,
                  color: Colors.blue,
                  size: 15,
                )
              ],
            ),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Phone Number',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  height: he * 0.045,
                  width: he * 0.20,
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 10, top: 12),
                          hintText: '+923000780007',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: MyThemeColor.textColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: MyThemeColor.textColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: MyThemeColor.textColor,
                              )))),
                ),
                Expanded(child: Container()),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Change Number',
                      style: TextStyle(color: Colors.blueAccent),
                    )),
                Icon(
                  Icons.edit,
                  color: Colors.blue,
                  size: 15,
                )
              ],
            ),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Email Address',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  height: he * 0.045,
                  width: he * 0.20,
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 10, top: 12),
                          hintText: 'wazir12@gmail.com',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: MyThemeColor.textColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: MyThemeColor.textColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: MyThemeColor.textColor,
                              )))),
                ),
                Expanded(child: Container()),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Change Email ID',
                      style: TextStyle(color: Colors.blueAccent),
                    )),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                  size: 15,
                )
              ],
            ),
            SizedBox(
              height: he * 0.02,
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 1,
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(
              children: [
                Text(
                  'Add Account',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[600],
                  size: 18,
                )
              ],
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(
              children: [
                Text(
                  'Switch Account',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[600],
                  size: 18,
                )
              ],
            ),
            SizedBox(
              height: he * 0.015,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Logout',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            )
          ],
        ),
      )),
    );
  }
}
