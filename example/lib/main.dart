import 'package:flutter/material.dart';
import 'package:nice_chat_bubble/recieve_bubble.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 400),
            ChatBubble(
              message:
                  'How are you? I hope you are doing well. Where are you currently? I"'
                  'm at your home.',
              bubbleColor: Colors.green,
              isReciever: false,
              isSeen: false,
              bubbleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            ChatBubble(
              message:
                  'I am fine. Please wait 1 hour, coming as soon as possible. Is everything ok? What is your phone password buddy?',
              bubbleColor: Colors.blue,
              isReciever: true,
              isSeen: true,
              bubbleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Type a message',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
