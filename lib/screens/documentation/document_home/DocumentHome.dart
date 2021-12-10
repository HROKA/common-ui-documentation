import 'package:common_ui_toolkit/index.dart';

class DocumentHome extends StatelessWidget {
  const DocumentHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonContainer(
        style: CommonContainerModel(
          width: DEVICE_WIDTH,
          height: DEVICE_HEIGHT,
          backgroundColor: 0xFF0F172A,
        ),
      ),
    );
  }
}
