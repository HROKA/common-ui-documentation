import 'package:common_ui_toolkit/components/common_container/CommonContainer.dart';
import 'package:common_ui_toolkit/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../index.dart';

class Home extends StatelessWidget {
  var achivementList = [
    {
      'icon': STAR_ICON,
      'title': '79,108',
      'description': 'Stars on ',
      'inlineText': 'Github',
      'url': 'https://github.com/HROKA/common_ui_toolkit',
    },
    {
      'icon': COMMIT_ICON,
      'title': '83',
      'description': 'Number of Commits',
    },
    {
      'icon': LIKE_ICON,
      'title': '4',
      'description': 'Likes',
    },
  ];

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
                                    style:
                                        CommonTextStyles().h3Style().copyWith(
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
                                    style:
                                        CommonTextStyles().h3Style().copyWith(
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
                          height: DEVICE_HEIGHT * 0.15,
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
                ),
                child: Column(
                  children: [
                    CommonText(
                      style: TextStyles().thickTextStyle(),
                      containerStyle: CommonContainerModel(
                        marginTop: DEVICE_HEIGHT * 0.1,
                      ),
                      text: 'It\'s free, it\'s Open Source!',
                    ),
                    CommonContainer(
                      style: CommonContainerModel(
                        marginVertical: DEVICE_HEIGHT * 0.1,
                      ),
                      child: Wrap(
                        spacing: DEVICE_WIDTH * 0.2,
                        children: achivementList
                            .map(
                              (e) => AchivmentBox(
                                icon: e['icon'],
                                description: e['description'],
                                inlineText: e['inlineText'],
                                url: e['url'],
                                title: e['title'],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    CommonContainer(
                      style: CommonContainerModel(
                        width: DEVICE_WIDTH,
                        paddingVertical: DEVICE_HEIGHT * 0.1,
                        backgroundImage: DecorationImage(
                          image: NetworkImage(
                            'https://i.imgur.com/4eaRaRh.png',
                          ),
                          repeat: ImageRepeat.repeat,
                        ),
                      ),
                      child: Wrap(
                        direction: Axis.horizontal,
                        spacing: DEVICE_WIDTH * 0.1,
                        alignment: WrapAlignment.center,
                        children: [
                          CommonContainer(
                            style: CommonContainerModel(
                              width: DEVICE_WIDTH * 0.3,
                              marginTop: DEVICE_HEIGHT * 0.1,
                            ),
                            child: Column(
                              children: [
                                CommonText(
                                  text: 'Look',
                                  style: TextStyles().thinTextStyle(),
                                ),
                                CommonText(
                                  text: 'What make your app looks native!',
                                  containerStyle: CommonContainerModel(
                                    marginTop: DEVICE_HEIGHT * 0.05,
                                  ),
                                  style: TextStyles().thickTextStyle().copyWith(
                                        fontSize: H2_FONT,
                                      ),
                                ),
                                CommonText(
                                  text:
                                      'Its interface. It is responsive, fast and works reliably on both platforms. When building a React component, you have to style each of them yourself, according to the guidelines of the platform you are targeting. This can be overwhelming and non-trivial to do right.',
                                  containerStyle: CommonContainerModel(
                                    marginTop: DEVICE_HEIGHT * 0.02,
                                  ),
                                  style: TextStyles().thickTextStyle().copyWith(
                                        fontSize: H4_FONT,
                                      ),
                                ),
                                CommonText(
                                  text:
                                      'Need a customized UI kit for Android, iOS, Web, Windows Or Mac applications? ',
                                  containerStyle: CommonContainerModel(
                                    marginTop: DEVICE_HEIGHT * 0.2,
                                  ),
                                  style: TextStyles().defaultTextStyle,
                                  inlineSpans: [
                                    WidgetSpan(
                                      child: MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: CommonText(
                                          text: 'Get started',
                                          style: TextStyles()
                                              .smallTextStyle()
                                              .copyWith(
                                                textDecoration:
                                                    TextDecoration.underline,
                                                decorationThickness: 5,
                                              ),
                                          onPress: () {
                                            launchURL(
                                              url:
                                                  'https://pub.dev/packages/common_ui_toolkit',
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          CommonContainer(
                            style: CommonContainerModel(
                              marginTop: DEVICE_HEIGHT * 0.1,
                            ),
                            child: Image.network(
                              'https://i.imgur.com/oEHgNuI.png',
                              width: DEVICE_WIDTH * 0.2,
                              height: DEVICE_HEIGHT * 0.7,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
