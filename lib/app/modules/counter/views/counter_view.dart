import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterView extends StatelessWidget {
  CounterView({Key? key}) : super(key: key);

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() => Text(
          "Count: ${controller.count}", 
          style: TextStyle(
            fontSize: controller.count.toDouble()
          ),
        )),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              if (controller.count > 1) {
                controller.minus();
              } else {
                showErrorMessage("Count < 1");
              }
            },
            tooltip: 'Kurang',
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 16.0),
          FloatingActionButton(
            onPressed: () {
              if (controller.count < 100) {
                controller.plus();
              } else {
                showErrorMessage("Count > 100");
              }
            },
            tooltip: 'Tambah',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
  void showErrorMessage(String message) {
    Get.snackbar(
      "Terjadi kesalahan!",
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }
}
