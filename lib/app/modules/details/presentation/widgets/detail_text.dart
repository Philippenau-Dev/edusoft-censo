import 'package:flutter/material.dart';

class DetailText extends StatelessWidget {
  const DetailText({
    super.key,
    required this.field,
    required this.text,
  });

  final String field;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: field,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: text,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
