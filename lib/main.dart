import 'package:common_ui_toolkit/index.dart';
import 'package:flutter/material.dart';
import '../utils/Constants.dart';
import './screens/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        CONTAINERS_ROUTE: (context) => Containers(),
        TEXTS_ROUTE: (context) => Texts(),
        DATE_PICKERS_ROUTE: (context) => DatePickers(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(PRIMARY_COLOR),
      ),
      drawer: Drawer(
        child: DrawerContainer(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CommonText(
            containerStyle: CommonContainerStyle().fullShadow.copyWith(
                  padding: 16,
                  alignment: Alignment.center,
                  margin: 20,
                  touchEffect: TouchableEffect(
                    type: TouchTypes.scaleAndFade,
                    opacity: 0.05,
                    duration: 5,
                    lowerBound: 0.8,
                    upperBound: 1,
                  ),
                ),
            style: CommonTextStyles().h2Style().copyWith(
                  fontColor: 0xFF123123,
                ),
            text: 'Common UI toolKit',
            onPress: () {
              print('Simple common text pressed');
            },
          ),
        ],
      ),
    );
  }
}