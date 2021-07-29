import 'package:flutter/material.dart';
import 'package:flutter_chatty/theme.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(75),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Type message...',
            style: subtitleTextStyle,
          ),
          Image.asset(
            'assets/images/send_btn.png',
            width: 35,
          ),
        ],
      ),
    );
  }
}
