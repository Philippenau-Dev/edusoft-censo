import 'package:flutter/material.dart';

class CensoCard extends StatelessWidget {
  const CensoCard({
    super.key,
    required this.name,
    required this.rank,
    this.onTap,
  });

  final String name;
  final String rank;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: Row(
            children: [
              CircleAvatar(
                child: Text(
                  '#$rank',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                fit: FlexFit.tight,
                child: Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: Colors.grey[400], // TODO criar paleta de cores
              ),
            ],
          ),
        ),
      ),
    );
  }
}
