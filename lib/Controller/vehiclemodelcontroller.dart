import 'package:get/get.dart';
// import 'dart:convert';

import 'package:test3/Services/remote_services.dart';

class ModelController extends GetxController {
  var modelList = <String>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchModel();

    super.onInit();
  }

  fetchModel() async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchModels();
      // print('------>$data');
      if (data != null) {
        modelList.value = data;
        // print('-----------------?$twoWheeler');
      }
    } finally {
      isLoading(false);
    }
    // return modelList;
  }
}
