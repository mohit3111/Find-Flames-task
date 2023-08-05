import 'package:flutter/material.dart';
import 'package:flutter_task/Helper/AppColoes.dart';

import '../Components/DetailCard.dart';
import '../Components/ImageCard.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  // If need we can create the model of detail Card.
  List<String> detailArray = ["Education", "Gender", "Orientation", "Work"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            profileImageSection(),
            aboutSection(),
            DetailCard(value: detailArray, title: "Basic"),
            DetailCard(value: detailArray, title: "Basic"),
            interests(title: "languages", isIcon: false, data: "English"),
            interests(title: "Interests", isIcon: true, data: "Comedy"),
          ],
        ),
      ),
    );
  }

  Padding interests(
      {required bool isIcon, required String title, required String data}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.primary,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    children: [
                      isIcon ?
                      const Icon(
                        Icons.emoji_emotions,
                        color: Colors.yellowAccent,
                      ) : Container(),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(data,
                        style: const TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget aboutSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("About"),
          const SizedBox(
            height: 8,
          ),
          Container(
            decoration: const BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(border: InputBorder.none),
                minLines: 5,
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileImageSection() {
    return const SizedBox(
      height: 220,
      width: 450,
      child: Row(
        children: [
          Column(
            children: [
              ImageCard(height: 125, width: 250),
              Row(
                children: [
                  ImageCard(height: 75, width: 125),
                  ImageCard(height: 75, width: 125),
                ],
              )
            ],
          ),
          Column(
            children: [
              ImageCard(height: 75, width: 150),
              ImageCard(height: 125, width: 150),
            ],
          )
        ],
      ),
    );
  }
}
