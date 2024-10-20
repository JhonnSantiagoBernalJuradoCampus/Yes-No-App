import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://cdn.milenio.com/uploads/media/2022/02/03/clara-galle-actriz-protagoniza-ventana-1.jpg'),
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
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
              return Text('Indice: $index');
            },)),
            
            Text('Mundo')
        
          ],
        ),
      ),
    );
  }
}