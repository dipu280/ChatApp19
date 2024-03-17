import 'package:day19/model/message.dart';
import 'package:day19/mycolor/color.dart';
import 'package:day19/wigdet/contact_info.dart';
import 'package:day19/wigdet/details_appbar.dart';
import 'package:day19/wigdet/detailsmessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsePage extends StatelessWidget {
  final Message message;
  DetailsePage(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: cPrimary,
        body: Column(
          children: [
            DetailsAppbar(),
            ContactInfo(message),
            Expanded(child: DetailsMessage())
          ],
        ));
  }
}
