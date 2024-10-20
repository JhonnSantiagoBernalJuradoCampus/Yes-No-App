import 'package:flutter/material.dart';
class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors =  Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            decoration: BoxDecoration(
              color: colors.secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text('Hola lindo', style: TextStyle(
                color: Colors.white
              ),),
            ),
          ),

          const SizedBox(height: 5.0,),

          _ImageBubble(),
          // Todo: imagen
          const SizedBox(height: 10.0,),
        ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/7-653c8ee5d3a6bbafd759142c9c18d76c.gif',
        width: size.width * 0.63,
        height: 150,
        fit: BoxFit.cover,
      )
    );
  }
}