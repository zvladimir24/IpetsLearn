import 'package:flutter/material.dart';

class PetContentWidget extends StatelessWidget {
  const PetContentWidget(
      {super.key, this.content, this.imageUrl, this.readTime, this.title});

  final String? imageUrl;
  final String? title;
  final String? content;
  final int? readTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 250,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: SizedBox(
                child: imageUrl != null
                    ? Image.asset(
                        imageUrl!,
                        fit: BoxFit.cover,
                      )
                    : Container(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Text(
              '${readTime ?? 0} min read',
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
