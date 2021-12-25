import 'package:Common_UI_Docs/screens/documentation/document_home/DocumentHomeController.dart';
import 'package:common_ui_toolkit/index.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DocumentHome extends StatelessWidget {
  const DocumentHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<DocumentHomeController>(
        init: DocumentHomeController(),
        builder: (controller) => CommonContainer(
          style: CommonContainerModel(
            width: DEVICE_WIDTH,
            height: DEVICE_HEIGHT,
            backgroundColor: 0xFF0F172A,
          ),
          child: Row(
            children: [
              CommonContainer(
                style: CommonContainerModel(
                  width: DEVICE_WIDTH * 0.3,
                  height: DEVICE_HEIGHT,
                  borderRightColor: 0xff03B6D3,
                  borderRightWidth: 2,
                  backgroundColor: 0xff0F172A,
                ),
                child: Column(
                  children: [
                    CommonText(
                      text: 'Common UI Toolkit',
                      style: CommonTextModel(
                        fontSize: 70,
                        fontColor: 0xFFFFFFFF,
                        fontWeight: FontWeight.bold,
                      ),
                      containerStyle: CommonContainerModel(
                        paddingVertical: 30,
                        marginBottom: 20,
                        borderBottomColor: 0xff03B6D3,
                        borderBottomWidth: 2,
                      ),
                    ),
                    ...controller.docComponents
                        .map(
                          (item) => DrawerItem(
                            title: item['name'],
                            onPress: () => controller
                                .onChangeSelectedComponent(item['id']),
                            isSelected:
                                controller.selectedComponent == item['id'],
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
              CommonContainer(
                style: CommonContainerModel(
                  width: DEVICE_WIDTH * 0.7,
                  height: DEVICE_HEIGHT,
                ),
                child: controller.selectedComponentWidget,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String? title;
  final Function? onPress;
  final bool? isSelected;

  const DrawerItem({
    Key? key,
    this.title,
    this.onPress,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonText(
      text: title,
      style: CommonTextModel(
        fontSize: 20,
        fontColor: isSelected! ? 0xff03B6D3 : 0xFF9BA4AF,
        fontWeight: FontWeight.bold,
        columnCrossAxisAlignemnt: CrossAxisAlignment.start,
      ),
      containerStyle: CommonContainerModel(
        paddingVertical: 10,
        marginVertical: 3,
        paddingHorizontal: DEVICE_WIDTH * 0.03,
        width: 0.3,
        borderBottomColor: 0xff03B6D3,
        borderBottomWidth: isSelected! ? 2 : 0,
        borderTopColor: 0xff03B6D3,
        borderTopWidth: isSelected! ? 2 : 0,
        backgroundColor: isSelected! ? 0xff142837 : 0xff0F172A,
        touchEffect: TouchableEffect(
          type: TouchTypes.opacity,
        ),
      ),
      onPress: onPress,
    );
  }
}
