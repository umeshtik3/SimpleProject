import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'VehicleClass.dart';

class VehicleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget vehicleInput = Container(
        padding: EdgeInsets.all(10),
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Creating New Vehicle Profile',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: new EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 10.0),
                  errorStyle: TextStyle(
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(),
                  ),
                  labelText: 'Vehicle Number',
                  labelStyle: TextStyle(fontSize: 15)),
              onFieldSubmitted: (value) {
                Navigator.pop(context);
                Get.to(() => VehicleClass());
              },
            ),
          ],
        ));
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle List'),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (_) {
                return vehicleInput;
              });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
