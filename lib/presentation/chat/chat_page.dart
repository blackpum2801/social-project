import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social/presentation/chat/widgets/chat_list.dart';
import 'package:social/presentation/chat/widgets/chat_search.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
      ),
      body: SafeArea(
        child: Column(
          children: [
            ChatSearch(),
            Expanded(child: ChatList()),
          ],
        ),
      ),
    );
  }
}
