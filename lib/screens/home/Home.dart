import 'package:common_ui_toolkit/components/common_container/CommonContainer.dart';
import 'package:common_ui_toolkit/index.dart';
import 'package:flutter/material.dart';

import '../../utils/Constants.dart';

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
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CommonContainer(
              style: CommonContainerModel(
                backgroundImage: DecorationImage(
                  image: NetworkImage(
                    'https://i.imgur.com/PjztU0g.jpg',
                  ),
                  repeat: ImageRepeat.repeat,
                ),
                width: DEVICE_WIDTH,
                height: DEVICE_HEIGHT * 0.9,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: DEVICE_HEIGHT * 0.1,
                    left: DEVICE_WIDTH * 0.15,
                    child: Column(
                      children: [
                        CommonText(
                          text: 'Making your Flutter apps',
                          style: CommonTextStyles().h1Style().copyWith(
                                fontweight: FontWeight.bold,
                                fontSize: 60,
                                fontFamily: 'Righteous',
                              ),
                          inlineSpans: [
                            TextSpan(
                              text: ' look \nand feel native',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Righteous',
                                fontSize: 60,
                                color: Color(
                                  SECONDARY_COLOR,
                                ),
                              ),
                            ),
                          ],
                          containerStyle: CommonContainerModel(
                            width: DEVICE_WIDTH * 0.4,
                          ),
                        ),
                        CommonText(
                          text:
                              'Common UI toolkit is a high-quality, that covered in all major use-cases.',
                          style: CommonTextStyles().h2Style().copyWith(
                                fontFamily: 'Righteous',
                              ),
                          containerStyle: CommonContainerModel(
                            width: DEVICE_WIDTH * 0.4,
                            marginTop: DEVICE_HEIGHT * 0.13,
                          ),
                        ),
                        CommonContainer(
                          style: CommonContainerModel(
                            width: DEVICE_WIDTH * 0.3,
                            marginTop: DEVICE_HEIGHT * 0.05,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CommonContainer(
                                style: CommonContainerModel(
                                  backgroundColor: SECONDARY_COLOR,
                                  width: DEVICE_WIDTH * 0.1,
                                  height: DEVICE_HEIGHT * 0.07,
                                  alignment: Alignment.center,
                                  touchEffect: TouchableEffect(
                                    type: TouchTypes.scaleAndFade,
                                  ),
                                ),
                                onPress: () {},
                                child: CommonText(
                                  text: 'Learn more',
                                  style: CommonTextStyles().h3Style().copyWith(
                                        fontColor: PRIMARY_COLOR,
                                        fontweight: FontWeight.bold,
                                        fontFamily: 'Righteous',
                                      ),
                                ),
                              ),
                              CommonContainer(
                                style: CommonContainerModel(
                                  backgroundColor: PRIMARY_COLOR,
                                  width: DEVICE_WIDTH * 0.1,
                                  height: DEVICE_HEIGHT * 0.07,
                                  alignment: Alignment.center,
                                  touchEffect: TouchableEffect(
                                    type: TouchTypes.scaleAndFade,
                                  ),
                                ),
                                onPress: () {},
                                child: CommonText(
                                  text: 'Docs',
                                  style: CommonTextStyles().h3Style().copyWith(
                                        fontColor: SECONDARY_COLOR,
                                        fontweight: FontWeight.bold,
                                        fontFamily: 'Righteous',
                                      ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    child: CommonContainer(
                      style: CommonContainerModel(
                        backgroundColor: SECONDARY_COLOR,
                        width: DEVICE_WIDTH,
                        height: DEVICE_HEIGHT * 0.2,
                      ),
                    ),
                  ),
                  Positioned(
                    top: DEVICE_HEIGHT * 0.2,
                    right: DEVICE_WIDTH * 0.05,
                    child: Image.network(
                      'https://i.imgur.com/oEHgNuI.png',
                      width: DEVICE_WIDTH * 0.2,
                      height: DEVICE_HEIGHT * 0.6,
                    ),
                  ),
                  Positioned(
                    top: DEVICE_HEIGHT * 0.09,
                    right: DEVICE_WIDTH * 0.15,
                    child: Image.network(
                      'https://i.imgur.com/oEHgNuI.png',
                      width: DEVICE_WIDTH * 0.2,
                      height: DEVICE_HEIGHT * 0.8,
                    ),
                  ),
                ],
              ),
            ),
            CommonContainer(
              style: CommonContainerModel(
                backgroundColor: SECONDARY_COLOR,
                width: DEVICE_WIDTH,
                height: DEVICE_HEIGHT * 0.5,
              ),
              child: Stack(),
            )
          ],
        ),
      ),
    ));
  }
}
