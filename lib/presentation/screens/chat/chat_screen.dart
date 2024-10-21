import 'package:flutter/material.dart';
import 'package:flutter_2/presentation/widget/chat/her_message_bubble.dart';
import 'package:flutter_2/presentation/widget/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.milenio.com/uploads/media/2022/02/03/clara-galle-actriz-protagoniza-ventana-1.jpg'),
          ),
        ),
        title: const Text('Mi amor <3'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                  ? const HerMessageBubble()
                  : const MyMessageBubble();
              },
            )),
            const Text('Mundo')
          ],
        ),
      ),
    );
  }
}
