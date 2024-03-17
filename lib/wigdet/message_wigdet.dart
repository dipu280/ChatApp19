import 'package:day19/model/message.dart';
import 'package:day19/wigdet/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageWidet extends StatelessWidget {
  final messageList = Message.generatedHomePageMessage();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: _buildMessages(),
      ),
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
        itemBuilder: (context, index) => _buildMs(context, index),
        separatorBuilder: (_, index) => SizedBox(
              height: 25,
            ),
        itemCount: messageList.length);
  }

  Widget _buildMs(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsePage(messageList[index])));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child:  Container(
    padding: EdgeInsets.all(22),
              width: 60,
              decoration: BoxDecoration(
               
                image: DecorationImage(image: AssetImage(messageList[index].user.iconUrl.toString()),fit: BoxFit.cover),
                shape: BoxShape.circle,color: messageList[index].user.bgColor),
            
             ),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                      '${messageList[index].user.firstame}${messageList[index].user.lastName}'),
                ],
              ),
              Text(messageList[index].lastMessage),
            ],
          ),
          SizedBox(
            width: 150,
          ),
          Text(messageList[index].lastTime)
        ],
      ),
    );
  }
}
