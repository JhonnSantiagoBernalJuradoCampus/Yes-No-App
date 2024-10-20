import 'package:flutter/material.dart';
class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors =  Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text('Hola mundo', style: TextStyle(
                color: Colors.white
              ),),
            ),
          ),

          const SizedBox(height: 10.0,)
        ],
    );
  }
}