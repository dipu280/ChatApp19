import 'package:day19/model/message.dart';
import 'package:day19/mycolor/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsMessage extends StatelessWidget {
  DetailsMessage({super.key});
  final myId = 0;
  final list = Message.generatedHomePageMessage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 151, 150, 150),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(25))),
          child: ListView.separated(
              itemBuilder: (context, index) => list[index].user.id == myId
                  ? _buildReceivedText(list[index])
                  : _duildSenderText(list[index]),
              separatorBuilder: (_, index) => SizedBox(
                    width: 10,
                  ),
              itemCount: list.length),
        ),
      ],
    );
  }

  Widget _buildReceivedText(Message message) {
    return Row(
      children: [
        Text(message.lastTime),
        Container(
            decoration: BoxDecoration(
                color: cprimaryLihgt,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                )),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 180),
              child: Text(message.lastMessage),
            )),
      ],
    );
  }

  Widget _duildSenderText(Message message) {
    return Row(
      children: [
        Container(
          
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(message.user.iconUrl),fit:BoxFit.cover ),
              color: message.user.bgColor, shape: BoxShape.circle),
         
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: cGreyLihgt,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              )),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 180),
            child: Text(message.lastMessage),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Text(message.lastTime)
      ],
    );
  }
}
