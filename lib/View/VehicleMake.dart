import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test3/Controller/vehiclemakecontroller.dart';

import 'VehicleModel.dart';

class VehicleMake extends StatelessWidget {
  // final VehicleMakeController makeController = Get.put(VehicleMakeController());
  final MakeController makeController = Get.put(MakeController());
  final bool makeList;
  VehicleMake({this.makeList});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String bikeName;
    return Scaffold(
      appBar: AppBar(
        title: makeList
            ? Text('Select Make Two Wheeler')
            : Text('Select Make Four Wheeler'),
      ),
      body: Column(
        children: [
          Expanded(child: Obx(
            () {
              if (makeController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return ListView.builder(
                    itemCount: makeList
                        ? makeController.twoWheeler.length
                        : makeController.fourWheeler.length,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => VehicleModel(makeList
                              ? makeController.twoWheeler[index]
                              : makeController.fourWheeler[index]));
                        },
                        child: Card(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(makeList
                                    ? makeController.twoWheeler[index]
                                    : makeController.fourWheeler[index]),
                              ),
                            ),
                          ],
                        )),
                      );
                    });
            },
          ))
        ],
      ),
    );
  }
}
