import 'package:common_ui_toolkit/index.dart';

class TextStyles {
  CommonTextModel thickTextStyle = CommonTextModel(
    fontSize: H1_FONT,
    fontweight: FontWeight.bold,
    fontFamily: 'Righteous',
  );

  CommonTextModel thinTextStyle = CommonTextModel(
    decoration: TextDecoration.underline,
    fontSize: H2_FONT,
    fontweight: FontWeight.bold,
    fontFamily: 'Righteous',
    decorationThickness: 5,
  );
  CommonTextModel smallTextStyle = CommonTextModel(
    fontColor: BLACK_COLOR,
    fontSize: H4_FONT,
    fontFamily: 'Righteous',
  );
}
