import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test3/Controller/vehiclemodelcontroller.dart';
import 'package:test3/View/VehicleFuelType.dart';

class VehicleModel extends StatelessWidget {
  final String makeName;

  VehicleModel(this.makeName);
  @override
  Widget build(BuildContext context) {
    ModelController modelController = Get.put(ModelController());
    // modelController.fetchModel();
    return Scaffold(
        appBar: AppBar(title: Text('Select ' + makeName + ' Model')),
        body: Column(children: [
          Expanded(child: Obx(
            () {
              if (modelController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return ListView.builder(
                    itemCount: modelController.modelList.length,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () => Get.to(() => VehicleFuelType()),
                        child: Card(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(modelController.modelList[index]),
                              ),
                            ),
                          ],
                        )),
                      );
                    });
            },
          )),
        ]));
  }
}
