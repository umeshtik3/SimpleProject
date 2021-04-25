import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VehicleFuelType extends StatelessWidget {
  List fuelType = [
    'Petrol',
    'Diesel',
    'CNG',
    'Petrol+CNG',
    'Electric',
    'Electric',
    'Hybrid'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fuel Type')),
      body: Column(children: [
        Expanded(
            child: ListView.builder(
                itemCount: fuelType.length,
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    child: Card(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(fuelType[index]),
                          ),
                        ),
                      ],
                    )),
                  );
                })),
      ]),
    );
  }
}
