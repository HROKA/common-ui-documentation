import 'package:common_ui_toolkit/index.dart';

class TextStyles {
  CommonTextModel defaultTextStyle = new CommonTextModel(
    fontColor: COMMON_WHITE_COLOR,
    fontFamily: 'Righteous',
    decorationColor: COMMON_WHITE_COLOR,
    decorationThickness: 5,
  );

  CommonTextModel smallTextStyle() => defaultTextStyle.copyWith(
        fontSize: COMMON_H4_FONT,
      );

  CommonTextModel thickTextStyle() => defaultTextStyle.copyWith(
        fontSize: COMMON_H1_FONT,
        fontWeight: FontWeight.bold,
      );

  CommonTextModel thinTextStyle() => defaultTextStyle.copyWith(
        fontSize: COMMON_H2_FONT,
        fontWeight: FontWeight.bold,
      );
}
