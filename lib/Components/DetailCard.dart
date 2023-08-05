import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helper/AppColoes.dart';

class DetailCard extends StatelessWidget {
  final List<String> value;
  final String title;
  DetailCard({super.key, required this.value, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
            itemCount: value.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Padding(
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          Icons.person,
                          size: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(value[index]),
                    const SizedBox(
                      width: 8,
                    ),
                    const Spacer(),
                    const Text("Add",
                        style: TextStyle(color: AppColors.primary)),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.secondary,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
