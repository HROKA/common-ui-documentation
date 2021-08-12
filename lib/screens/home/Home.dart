import 'package:common_ui_toolkit/components/common_container/CommonContainer.dart';
import 'package:common_ui_toolkit/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';

class Home extends StatelessWidget {
  int endTime = DateTime(
        2021,
        8,
        17,
      ).millisecondsSinceEpoch +
      1000 * 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CommonContainer(
      style: CommonContainerModel(
        width: DEVICE_WIDTH,
        height: DEVICE_HEIGHT,
        paddingTop: DEVICE_HEIGHT * 0.1,
        backgroundImage: DecorationImage(
          image: NetworkImage(
            'https://i.imgur.com/RLYUySY.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CommonText(
              text: 'Common UI toolkit \n\n',
              style: CommonTextStyles().h1Style().copyWith(
                    fontColor: 0xFFFFFFFF,
                    fontweight: FontWeight.bold,
                    fontSize: 60,
                  ),
            ),
            CountdownTimer(
              endTime: endTime,
              textStyle: TextStyle(
                fontSize: 60,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
