import 'package:flutter/material.dart';


class HeartButton extends StatelessWidget {
  final int number;
  final VoidCallback onPressed;

  const HeartButton({
    super.key, 
    required this.number,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
        ),
        child: Stack(
          children: [
            const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 46,
            ),
            Positioned(
              right: 8,
              top: 3,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  number.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}