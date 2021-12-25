import 'package:common_ui_toolkit/index.dart';

class Installing extends StatelessWidget {
  const Installing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: CommonContainerModel(
        width: DEVICE_WIDTH,
        height: DEVICE_HEIGHT,
        backgroundColor: 0xFF0F172A,
      ),
      child: CommonText(
        text: "Installing",
        style: CommonTextModel(
          fontSize: 30,
          fontColor: 0xFFFFFFFF,
        ),
      ),
    );
  }
}
