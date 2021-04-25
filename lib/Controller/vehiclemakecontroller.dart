import 'package:get/get.dart';
// import 'dart:convert';

import 'package:test3/Services/remote_services.dart';

class MakeController extends GetxController {
  // List<String> twoWhheelerFromJson(String str) =>
  //     List<String>.from(json.decode(str).map((x) => x));

  // String twoWhheelerToJson(List<String> data) =>
  //     json.encode(List<dynamic>.from(data.map((x) => x)));
  var twoWheeler = <String>[].obs;
  var fourWheeler = <String>[].obs;
  var modelList = <String>[].obs;
  var isLoading = true.obs;

  

  @override
  void onInit() {
    fetchTwoWheeler();
    fetchFourWheeler();
    // fetchModel();
  
    super.onInit();
  }

  fetchTwoWheeler() async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchTwoWheeler();
      // print('------>$data');
      if (data != null) {
        twoWheeler.value = data;
        // print('-----------------?$twoWheeler');
      }
    } finally {
      isLoading(false);
    }
  }

fetchFourWheeler() async {
    try {
      isLoading(true);
      List data = await RemoteService.fetchFourWheeler();
      // print('------>$data');
      if (data != null) {
        fourWheeler.value = data;
        // print('-----------------?$twoWheeler');
      }
    } finally {
      isLoading(false);
    }
  }

  Future<List>  fetchModel() async {
    
  
    try {
      isLoading(true);
      var data = await RemoteService.fetchModels();
      print('------>$data');
      if (data != null) {
        modelList.value = data;
        // print('-----------------?$twoWheeler');
      }
    } finally {
      isLoading(false);
    }
    return modelList;
  }
}
