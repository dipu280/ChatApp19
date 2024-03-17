import 'package:day19/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecentContact extends StatelessWidget {
  final contactLisr = User.generatedUser();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white.withOpacity(0.5)),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Expanded(
              child: Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
            width: 60,
            decoration: BoxDecoration(
             
              image: DecorationImage(image: AssetImage(contactLisr[index].iconUrl.toString()),fit: BoxFit.cover),
              shape: BoxShape.circle,color: contactLisr[index].bgColor),
           
           ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 12.0,
                    ),
                itemCount: contactLisr.length),
          ))
        ],
      ),
    );
  }
}
