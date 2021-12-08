import 'package:common_ui_toolkit/index.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonContainer(
        style: CommonContainerModel(
          width: DEVICE_WIDTH,
          height: DEVICE_HEIGHT,
        ),
        child: Center(
          child: CommonText(
            text: '404',
            style: CommonTextStyles().h1Style().copyWith(
                  fontWeight: FontWeight.bold,
                ),
            bottomChild: CommonText(
              text: 'Page Not Found',
              style: CommonTextStyles().h1Style().copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
