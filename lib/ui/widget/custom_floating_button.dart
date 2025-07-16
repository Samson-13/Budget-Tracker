import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0, bottom: 24.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          onPressed: onPressed,
          shape: const CircleBorder(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
