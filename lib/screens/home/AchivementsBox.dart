import 'package:common_ui_toolkit/components/index.dart';
import 'package:common_ui_toolkit/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../index.dart';
import '../../utils/Helper.dart';
import '../../utils/index.dart';

class AchivmentBox extends StatelessWidget {
  String? icon, title, description, inlineText, url;

  AchivmentBox({
    this.icon,
    this.title,
    this.description,
    this.inlineText,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          icon!,
          width: DEVICE_WIDTH * 0.05,
          height: DEVICE_WIDTH * 0.05,
          color: Color(WHITE_COLOR),
        ),
        CommonText(
          containerStyle: CommonContainerModel(
            marginTop: DEVICE_HEIGHT * 0.03,
          ),
          style: TextStyles().thickTextStyle().copyWith(
                fontSize: FONT_SIZE_LARGE,
              ),
          text: title,
        ),
        CommonText(
          containerStyle: CommonContainerModel(
            marginTop: DEVICE_HEIGHT * 0.03,
          ),
          style: TextStyles().smallTextStyle(),
          text: description,
          inlineSpans: [
            WidgetSpan(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: CommonText(
                  style: TextStyles().smallTextStyle().copyWith(
                        textDecoration: TextDecoration.underline,
                      ),
                  text: inlineText,
                  onPress: () {
                    launchURL(
                      url: url,
                    );
                  },
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
