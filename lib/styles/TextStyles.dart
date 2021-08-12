import 'package:common_ui_toolkit/index.dart';

class TextStyles {
  CommonTextModel thickTextStyle = CommonTextModel(
    fontSize: H1_FONT,
    fontweight: FontWeight.bold,
    fontFamily: 'Righteous',
    fontColor: WHITE_COLOR,
  );

  CommonTextModel thinTextStyle = CommonTextModel(
    decoration: TextDecoration.underline,
    fontSize: H2_FONT,
    fontweight: FontWeight.bold,
    fontFamily: 'Righteous',
    decorationThickness: 5,
    decorationColor: WHITE_COLOR,
    fontColor: WHITE_COLOR,
  );
  CommonTextModel smallTextStyle = CommonTextModel(
    fontSize: H4_FONT,
    fontColor: WHITE_COLOR,
    fontFamily: 'Righteous',
    decorationColor: WHITE_COLOR,
  );
}
