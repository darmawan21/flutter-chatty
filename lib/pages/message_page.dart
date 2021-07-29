import 'package:flutter/material.dart';
import 'package:flutter_chatty/theme.dart';
import 'package:flutter_chatty/widgets/chat_buble.dart';
import 'package:flutter_chatty/widgets/chat_input.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightwhiteColor,
      floatingActionButton: ChatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 115,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(
                    30,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/group1.png',
                    width: 55,
                    height: 55,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jakarta Fair',
                        style: titleTextStyle,
                      ),
                      Text(
                        '14,209 members',
                        style: subtitleTextStyle,
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/call_btn.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ChatBubble(
              imageUrl: 'assets/images/friend1.png',
              text: 'How are you guys?',
              time: '2:30',
              unread: true,
            ),
            SizedBox(
              height: 30,
            ),
            ChatBubble(
              imageUrl: 'assets/images/friend3.png',
              text: 'Find here :p',
              time: '3:11',
              unread: true,
            ),
            SizedBox(
              height: 30,
            ),
            ChatBubble(
              imageUrl: 'assets/images/friend4.png',
              text:
                  'Thinking about how to deal \nwith this client from hell...',
              time: '22:08',
              unread: false,
            ),
            SizedBox(
              height: 30,
            ),
            ChatBubble(
              imageUrl: 'assets/images/friend2.png',
              text: 'Love Them',
              time: '23.11',
              unread: true,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
