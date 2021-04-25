import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test3/View/VehicleMake.dart';

class VehicleClass extends StatelessWidget {
  final bool bike = true;
  final bool car = false;
  // VehicleClass(this.carNumber);
  @override
  Widget build(BuildContext context) {
    // print(carNumber);
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle Class'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Text(carNumber),
          GestureDetector(onTap: ()=>Get.to(VehicleMake(makeList: bike,)),
                      child: Card(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Bike'),
            )),
          ),
          GestureDetector(onTap: ()=> Get.to(()=>VehicleMake(makeList: car,)),
                      child: Card(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Car'),
            )),
          )
        ],
      )),
    );
  }
}
