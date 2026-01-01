import 'package:flutter/material.dart';

class CircularLoading extends StatelessWidget {
  const CircularLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Column(
          mainAxisSize: .min,
          children: [
            Center(child: CircularProgressIndicator()),
            SizedBox(height: 10),
            Text('Please wait....'),
          ],
        ),
      ),
    );
  }
}
