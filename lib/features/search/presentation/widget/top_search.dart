import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopSearch extends StatelessWidget {
  final List<String> seartchTopics;

  const TopSearch({super.key, required this.seartchTopics});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Wrap(
        spacing: 10,
        runSpacing: 10,
        children: seartchTopics
            .map(
              (topic) => SizedBox(
                height: 32,
                child: Chip(
                  label: Text(
                    topic,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  backgroundColor: Colors.white,
                  visualDensity: const VisualDensity(vertical: -4),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
