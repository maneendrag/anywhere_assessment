import 'dart:convert';


import 'package:checkscheme/_app/api_service.dart';
import 'package:checkscheme/_app/app.locator.dart';
import 'package:checkscheme/screens/landing/landing_screen_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

enum DeviceType { Phone, Tablet }

class LandingScreenViewModel extends BaseViewModel{

  final ApiService _apiService = locator<ApiService>();
  final NavigationService navigationService = locator<NavigationService>();

  TextEditingController editingController = TextEditingController();

  final List<String> duplicateItems = [];
  List<RelatedTopics> relatedTopicsList = [];
  List<String> items = [];

  String varAURL = "http://api.duckduckgo.com/?q=simpsons+characters&format=json";
  String varBURL = "http://api.duckduckgo.com/?q=the+wire+characters&format=json";
  String? currentFlavor;
  int currentIndex = 0;
  String? useURL;

  void checkFlavor() async{
    String? flavor = await const MethodChannel('flavor')
        .invokeMethod<String>('getFlavor');

    print("flavour found id -----> $flavor");

    currentFlavor = flavor;

    getLandingItems();

  }

  DeviceType getDeviceType() {
  final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
  return data.size.shortestSide < 550 ? DeviceType.Phone : DeviceType.Tablet;
  }

  void filterSearchResults(String query) {
    print("Entered search");
    try{
      items = duplicateItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase())).cast<String>()
          .toList();

      notifyListeners();
    }catch(e){
      print("Error in search ------> $e");
    }
  }

  Future getLandingItems() async{

    try{
      setBusy(true);

      if(currentFlavor == "VariantA"){
       useURL = varAURL;
      }else{
        useURL = varBURL;
      }
      var jsonResponse =
      await _apiService.get(useURL);

      final Map<String, dynamic> resp = json.decode(jsonResponse.toString());
      final LandingScreenResponse landingResponse = LandingScreenResponse.fromJson(resp);
      relatedTopicsList = landingResponse.relatedTopics ?? [];
      relatedTopicsList.forEach((element) {duplicateItems.add(element.text!);});
      relatedTopicsList.forEach((element) {items.add(element.text!);});

      setBusy(false);

      notifyListeners();


    }catch(e){
      print("WhTA THE EXCEPTION ====> $e");
    }
  }

  onTapListViewItem(int index){
    currentIndex = index;
    notifyListeners();
  }

}