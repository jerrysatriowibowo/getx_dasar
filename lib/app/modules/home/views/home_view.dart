import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed("/counter");
              },
              child: Card(
                color: Colors.blue.shade400,
                margin: EdgeInsets.all(16),
                child: Center(
                  child: Text("Counter Page"),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
