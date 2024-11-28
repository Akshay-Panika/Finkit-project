import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data_folder/intro_data.dart';

class BuildSilverGrid extends StatelessWidget {
  final String image;
  const BuildSilverGrid({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Image.asset(image,fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.image),
              ),
            ),
          ),
          const Text("Video Description")
        ],
      ),
    );
  }
}
