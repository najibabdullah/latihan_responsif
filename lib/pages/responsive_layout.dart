import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_responsif/controller/responsif_controller.dart';
import 'package:latihan_responsif/pages/mobilelayout/list_data_mobile.dart';
import 'package:latihan_responsif/pages/tablelayout/grid_data_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({super.key});
  final ResponsifController responsifController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (responsifController.isMobile()) {
        return ListDataMobile();
      } else {
        return GridDataLayout();
      }
    });
  }
}
