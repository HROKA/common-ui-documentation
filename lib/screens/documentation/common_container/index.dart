import 'package:common_ui_toolkit/index.dart';

class CommonContainerComponent extends StatelessWidget {
  // const CommonContainerComponent({Key? key}) : super(key: key);
  List exampels = [
    ''' 
      CommonContainer(
          style: CommonContainerModel().copyWith(width: 0.99),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // circle shape
                CommonContainer(
                  style: CommonContainerStyle().fullShadow.copyWith(
                        backgroundColor: 0xFF255224,
                        boxShape: BoxShape.circle,
                        width: 0.5,
                        height: 0.3,
                        touchEffect: TouchableEffect(),
                      ),
        ),
    ''',
    '''
      CommonContainer(
        style: CommonContainerStyle().fullShadow.copyWith(
              backgroundColor: 0xFF05DAFF,
              transform: Matrix4.skewX(0.3),
              boxShape: BoxShape.circle,
              width: 0.5,
              height: 0.3,
            ),
      ),
    ''',
    '''
      CommonContainer(
        style: CommonContainerStyle().fullShadow.copyWith(
              backgroundColor: 0xFFC09E16,
              transform: Matrix4.skewX(-0.3),
              width: 0.5,
              height: 0.3,
            ),
      ),
    '''
  ];

  List tableTitles = [
    "Name",
    "Type",
    "Description",
    "Default",
    "Required",
    "Example",
    "Preview",
    "Params",
  ];

  List tableValues = [
    {
      "id": 0,
      "Name": "style",
      "Type": "CommonContainerStyle",
      "Description": "Style of the container",
      "Default": "CommonContainerStyle()",
      "Required": "---",
      "Example": "CommonContainerStyle()",
      "Preview": "---",
      "Params": "---",
    },
    {
      "id": 1,
      "Name": "child",
      "Type": "Widget",
      "Description": "Child of the container",
      "Default": "---",
      "Required": "---",
      "Example": "---",
      "Preview": "---",
      "Params": "---",
    },
    {
      "id": 2,
      "Name": "onPress",
      "Type": "Function",
      "Description": "Callback function when the container is pressed",
      "Default": "---",
      "Required": "---",
      "Example": "---",
      "Preview": "---",
      "Params": "---",
    },
    {
      "id": 3,
      "Name": "isLoading",
      "Type": "bool",
      "Description": "If true, the container will be loading",
      "Default": "false",
      "Required": "---",
      "Example": "---",
      "Preview": "---",
      "Params": "---",
    },
    {
      "id": 4,
      "Name": "loadingWidget",
      "Type": "Widget",
      "Description": "Widget to show when the container is loading",
      "Default": "---",
      "Required": "---",
      "Example": "---",
      "Preview": "---",
      "Params": "---",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: CommonContainerModel(
        width: 0.6,
        height: DEVICE_HEIGHT,
        paddingLeft: DEVICE_WIDTH * 0.03,
        backgroundColor: 0xFF0F172A,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // header title
            CommonText(
              text: "Common Container",
              style: CommonTextStyles().h1Style().copyWith(
                    fontColor: 0xFFFFFFFF,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    columnCrossAxisAlignemnt: CrossAxisAlignment.start,
                  ),
              containerStyle: CommonContainerModel(
                marginTop: DEVICE_HEIGHT * 0.02,
                alignment: Alignment.centerLeft,
              ),

              // header description
              bottomChild: CommonText(
                text:
                    "This is a generic component for low level layout needs. It is similar to container, center, padding, margin and other layout related components.",
                style: CommonTextStyles().h4Style().copyWith(
                      fontColor: 0xFFFFFFFF,
                      textAlign: TextAlign.start,
                      height: 1.3,
                    ),
                containerStyle: CommonContainerModel(
                  marginTop: DEVICE_HEIGHT * 0.01,
                ),
              ),
            ),

            // Examples
            CommonText(
              text: "Examples",
              style: CommonTextStyles().h2Style().copyWith(
                    fontColor: 0xFFFFFFFF,
                    fontWeight: FontWeight.bold,
                    columnCrossAxisAlignemnt: CrossAxisAlignment.start,
                  ),
              containerStyle: CommonContainerModel(
                marginTop: DEVICE_HEIGHT * 0.02,
                alignment: Alignment.centerLeft,
                minHieght: DEVICE_HEIGHT * 0.2,
              ),

              // Examples code
              bottomChild: Column(
                children: exampels
                    .map(
                      (title) => ExampleCodeCopy(
                        exampleCode: title,
                      ),
                    )
                    .toList(),
              ),
            ),

            // props
            CommonText(
              text: "Props",
              style: CommonTextStyles().h2Style().copyWith(
                    fontColor: 0xFFFFFFFF,
                    fontWeight: FontWeight.bold,
                    columnCrossAxisAlignemnt: CrossAxisAlignment.start,
                  ),
              containerStyle: CommonContainerModel(
                alignment: Alignment.centerLeft,
                minHieght: DEVICE_HEIGHT * 0.2,
                marginTop: DEVICE_HEIGHT * 0.05,
              ),
              bottomChild: CommonContainer(
                style: CommonContainerModel(
                  width: 0.6,
                  marginTop: DEVICE_HEIGHT * 0.02,
                ),
                child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder.all(
                    color: Colors.white,
                  ),
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                      ),
                      children: tableTitles
                          .map(
                            (title) => TableTitle(
                              title: title,
                            ),
                          )
                          .toList(),
                    ),
                    ...tableValues
                        .map(
                          (item) => TableRow(
                            decoration: BoxDecoration(
                              color: item['id'] % 2 == 0
                                  ? Colors.grey[900]
                                  : Colors.grey[850],
                            ),
                            children: [
                              TableValue(value: item['Name']),
                              TableValue(value: item['Type']),
                              TableValue(value: item['Description']),
                              TableValue(value: item['Default']),
                              TableValue(value: item['Required']),
                              TableValue(value: item['Example']),
                              TableValue(value: item['Preview']),
                              TableValue(value: item['Params']),
                            ],
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TableValue extends StatelessWidget {
  final String? value;
  const TableValue({
    Key? key,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonText(
      text: value,
      style: CommonTextStyles().h4Style().copyWith(
            fontColor: COMMON_WHITE_COLOR,
          ),
      containerStyle: CommonContainerModel(
        alignment: Alignment.center,
      ),
    );
  }
}

class TableTitle extends StatelessWidget {
  final String? title;
  const TableTitle({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonText(
      text: title,
      style: CommonTextStyles().h4Style().copyWith(
            fontColor: COMMON_WHITE_COLOR,
            fontWeight: FontWeight.bold,
          ),
      containerStyle: CommonContainerModel(
        marginVertical: DEVICE_HEIGHT * 0.05,
      ),
    );
  }
}

class ExampleCodeCopy extends StatelessWidget {
  final String? exampleCode;
  const ExampleCodeCopy({
    Key? key,
    this.exampleCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: CommonContainerModel(
        marginTop: DEVICE_HEIGHT * 0.01,
        width: 0.55,
        minHieght: DEVICE_HEIGHT * 0.1,
        borderColor: COMMON_WHITE_COLOR,
        borderWidth: 1,
        borderRadius: 10,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 30.0,
            top: 30.0,
            child: CommonContainer(
              style: CommonContainerModel(
                touchEffect: TouchableEffect(
                  type: TouchTypes.opacity,
                ),
              ),
              onPress: () => print('object'),
              child: Icon(
                Icons.copy,
                color: Colors.white,
              ),
            ),
          ),
          CommonText(
            text: exampleCode,
            style: CommonTextStyles().h4Style().copyWith(
                  fontColor: 0xFFFFFFFF,
                  textAlign: TextAlign.start,
                  height: 1.5,
                ),
            containerStyle: CommonContainerModel(
              marginTop: DEVICE_HEIGHT * 0.03,
            ),
          ),
        ],
      ),
    );
  }
}
