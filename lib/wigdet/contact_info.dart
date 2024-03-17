import 'package:day19/model/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactInfo extends StatelessWidget {
  final Message message;
  ContactInfo(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${message.user.firstame}\n${message.user.lastName}',
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Row(
            children: [
              _buildButton(Icons.phone),
              SizedBox(
                width: 8,
              ),
              _buildButton(Icons.camera_alt_outlined),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildButton(IconData iconData) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Color.fromARGB(255, 22, 192, 135)),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
