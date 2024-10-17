import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_responsif/controller/responsif_controller.dart';
import 'package:latihan_responsif/pages/responsive_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ResponsifController responsifController =
      Get.put(ResponsifController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'responsif UI',
      home: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          responsifController.updateScreenWidth(constraints.maxWidth);
          return ResponsiveLayout();
        }),
      ),
    );
  }
}
