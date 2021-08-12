import 'package:common_ui_toolkit/index.dart';

class TextStyles {
  CommonTextModel defaultTextStyle = new CommonTextModel(
    fontColor: WHITE_COLOR,
    fontFamily: 'Righteous',
    decorationColor: WHITE_COLOR,
    decorationThickness: 5,
  );

  CommonTextModel smallTextStyle() => defaultTextStyle.copyWith(
        fontSize: H4_FONT,
      );

  CommonTextModel thickTextStyle() => defaultTextStyle.copyWith(
        fontSize: H1_FONT,
        fontweight: FontWeight.bold,
      );

  CommonTextModel thinTextStyle() => defaultTextStyle.copyWith(
        textDecoration: TextDecoration.underline,
        fontSize: H2_FONT,
        fontweight: FontWeight.bold,
      );
}
