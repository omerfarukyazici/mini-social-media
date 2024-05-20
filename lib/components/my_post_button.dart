import 'package:flutter/material.dart';
class PostButton extends StatelessWidget {
   PostButton({super.key, required this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12)
        ),
          margin: EdgeInsets.only(left: 10),
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Icon(Icons.done),
          ),
        
      ),

    );
  }
}
