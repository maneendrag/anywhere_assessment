
import 'package:checkscheme/_app/app.router.dart';
import 'package:checkscheme/screens/landing/landing_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';


class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Using ViewModel of Landing Screen
    return  ViewModelBuilder<LandingScreenViewModel>.reactive(
        viewModelBuilder: ()=> LandingScreenViewModel(),
        onViewModelReady: (model)=> model.checkFlavor(),
        builder: (context, model, child){
     return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("List View Screen"),
        ),
        body: model.isBusy == true ? const CircularProgressIndicator()
            : Row(
              children: [
                Expanded(
                  child: Container(color: Colors.grey[300],
                    child: Column(
          children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) {
                          model.filterSearchResults(value);
                        },
                        // controller: editingController,
                        decoration: const InputDecoration(
                            labelText: "Search",
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: model.items.length,
                        // itemCount: items.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: InkWell(
                              onTap: (){
                                model.getDeviceType() == DeviceType.Phone ? model.navigationService.navigateTo(Routes.landingDetailsScreen,
                                    arguments: LandingDetailsScreenArguments(relatedTopicsData: model.relatedTopicsList[index]) ) : model.onTapListViewItem(index);
                              },
                              child: Container(
                                margin: EdgeInsets.all(8),
                                  padding: EdgeInsets.all(12),
                                  color: Colors.teal,
                                  child: Text(model.items[index], style: TextStyle(color: Colors.white),)),
                            ),
                          );
                        },
                      ),
                    ),
          ],
        ),
                  ),
                ),
               model.getDeviceType() == DeviceType.Phone ? Container()
                   : Expanded(
                  child: Center(
                      child: ListView(
                        children: [Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.width / 25,
                            ),
                            model.relatedTopicsList[model.currentIndex].icon!.uRL!.isEmpty
                                ? Image.network(
                              "https://t3.ftcdn.net/jpg/03/34/83/22/360_F_334832255_IMxvzYRygjd20VlSaIAFZrQWjozQH6BQ.jpg",
                              height: MediaQuery.of(context).size.width / 3,
                              width: MediaQuery.of(context).size.width / 3,
                              fit: BoxFit.contain,
                            )
                                : Image.network(
                              "https://duckduckgo.com/i/99b04638.png",
                              height: MediaQuery.of(context).size.width / 3,
                              width: MediaQuery.of(context).size.width / 3,
                              fit: BoxFit.contain,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Text(model.relatedTopicsList[model.currentIndex].result!,
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ],
                        )],
                      )),
                ),
              ],

            ) ,
      );
  });

}}
