import 'package:checkscheme/screens/landing/landing_screen_response.dart';
import 'package:flutter/material.dart';

class LandingDetailsScreen extends StatelessWidget {
  LandingDetailsScreen({super.key, required this.relatedTopicsData});

  RelatedTopics relatedTopicsData;

  @override
  Widget build(BuildContext context) {
    print("in details --> ${relatedTopicsData.icon!.uRL!}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Screen"),
      ),
      body: ListView(
        children: [
      SizedBox(
        height: MediaQuery.of(context).size.width / 25,
      ),
      relatedTopicsData.icon!.uRL!.isEmpty
          ? Image.network(
              "https://t3.ftcdn.net/jpg/03/34/83/22/360_F_334832255_IMxvzYRygjd20VlSaIAFZrQWjozQH6BQ.jpg",
              height: MediaQuery.of(context).size.width / 3,
              width: MediaQuery.of(context).size.width / 3,
              fit: BoxFit.contain,
            )
          : Image.network(
              relatedTopicsData.icon!.uRL!,
              height: MediaQuery.of(context).size.width / 3,
              width: MediaQuery.of(context).size.width / 3,
              fit: BoxFit.contain,
            ),

      Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(relatedTopicsData.result!,
            style: TextStyle(color: Colors.black)),
      ),
        ],
      ),
    );
  }
}
