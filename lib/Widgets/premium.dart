import 'package:flutter/material.dart';
import 'package:tma/Widgets/constant.dart';

class GoPremium extends StatefulWidget {
  const GoPremium({super.key});

  @override
  State<GoPremium> createState() => _GoPremiumState();
}

class _GoPremiumState extends State<GoPremium> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(he * 0.004),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(he * 0.02),
            gradient: const LinearGradient(
              colors: [Color(0xffFDC830), Color(0xffF37335)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(he * 0.02),
              color: Colors.grey[200],
            ),
            padding: EdgeInsets.all(he * 0.012),
            child: Row(
              children: [
                Container(
                  width: he * 0.05,
                  height: he * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(he * 0.02),
                    color: Colors.grey[300],
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Color.fromARGB(255, 163, 159, 159).withOpacity(0.6),
                        BlendMode.srcATop),
                    child: const Icon(
                      Icons.workspace_premium_outlined,
                      size: 30,
                      color: MyThemeColor.textColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: he * 0.015,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Go Premium',
                      style: TextStyle(
                          color: Color.fromARGB(255, 22, 23, 22),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Get Access to all features\nand unlimited downloads',
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios,
                      color: Colors.grey, size: 30),
                  onPressed: () {},
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
