import 'package:day19/wigdet/message_wigdet.dart';
import 'package:day19/wigdet/recent_contact.dart';
import 'package:flutter/cupertino.dart';

import 'package:day19/mycolor/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary,
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: (MediaQuery.of(context).padding.top)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Chat with\nYour Friends",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ),
              RecentContact(),
              MessageWidet()
            ],
          ),
        ),
      ),
    );
  }
}
