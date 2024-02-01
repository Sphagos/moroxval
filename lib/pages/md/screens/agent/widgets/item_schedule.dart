import 'package:flutter/material.dart';

class ItemSchedule extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color color;

  const ItemSchedule({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).colorScheme.primary.withOpacity(.2),
            spreadRadius: 5,
            blurRadius: 5,
          )
        ],
      ),
      child: Row(
        children: [
          // Main Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('RECEIVE VALUATION', style: Theme.of(context).textTheme.titleMedium),
                // Add any other relevant information you want to display
              ],
            ),
          ),
          // Download Button
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              primary: color,
            ),
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}
