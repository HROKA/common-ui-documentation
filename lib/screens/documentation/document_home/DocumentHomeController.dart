import 'package:Common_UI_Docs/screens/documentation/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DocumentHomeController extends GetxController {
  int? selectedComponent = 0;
  Widget? selectedComponentWidget;

  List<Map> docComponents = [
    {
      "id": 0,
      "name": "Installing",
      "Component": Installing(),
    },
    {
      "id": 1,
      "name": "Common Container",
      "Component": CommonContainerComponent(),
    },
    {
      "id": 2,
      "name": "Common Text Input",
      "Component": CommonTextInputComponent(),
    },
    {
      "id": 3,
      "name": "Common Button",
      "Component": CommonButtonComponent(),
    },
    {
      "id": 4,
      "name": "Common Text",
      "Component": CommonTextComponent(),
    },
    {
      "id": 5,
      "name": "Common Date Picker",
      "Component": CommonDatePickerComponent(),
    }
  ];

  @override
  void onReady() {
    super.onReady();
    onChangeSelectedComponent(1);
  }

  void onChangeSelectedComponent(componentIndex) {
    selectedComponent = componentIndex;
    selectedComponentWidget = docComponents[componentIndex]["Component"];
    update();
  }
}
