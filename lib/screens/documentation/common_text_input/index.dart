import 'package:common_ui_toolkit/index.dart';

class CommonTextInputComponent extends StatelessWidget {
  const CommonTextInputComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: CommonContainerModel(
        width: DEVICE_WIDTH,
        height: DEVICE_HEIGHT,
        backgroundColor: 0xFF0F172A,
      ),
      child: CommonText(
        text: "Common Text Input",
        style: CommonTextModel(
          fontSize: 30,
          fontColor: 0xFFFFFFFF,
        ),
      ),
    );
  }
}
