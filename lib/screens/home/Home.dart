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
            CommonContainer(
              style: CommonContainerModel(
                backgroundColor: PRIMARY_COLOR,
                width: DEVICE_WIDTH,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                    style: TextStyles().thickTextStyle,
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
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: DEVICE_WIDTH * 0.1,
                    alignment: WrapAlignment.center,
                    children: [
                      CommonContainer(
                        style: CommonContainerModel(
                          width: DEVICE_WIDTH * 0.4,
                          marginTop: DEVICE_HEIGHT * 0.1,
                        ),
                        child: Column(
                          children: [
                            CommonText(
                              text: 'Look',
                              style: TextStyles().thinTextStyle,
                            ),
                            CommonText(
                              text: 'What make your app looks native!',
                              containerStyle: CommonContainerModel(
                                marginTop: DEVICE_HEIGHT * 0.05,
                              ),
                              style: TextStyles().thickTextStyle.copyWith(
                                    fontSize: H2_FONT,
                                  ),
                            ),
                            CommonText(
                              text:
                                  'Its interface. It is responsive, fast and works reliably on both platforms. When building a React component, you have to style each of them yourself, according to the guidelines of the platform you are targeting. This can be overwhelming and non-trivial to do right.',
                              containerStyle: CommonContainerModel(
                                marginTop: DEVICE_HEIGHT * 0.02,
                              ),
                              style: TextStyles().thickTextStyle.copyWith(
                                    fontSize: H4_FONT,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      CommonContainer(
                        style: CommonContainerModel(
                          width: DEVICE_WIDTH * 0.2,
                          height: DEVICE_HEIGHT * 0.5,
                          backgroundColor: SECONDARY_COLOR,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
