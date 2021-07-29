import 'package:flutter/material.dart';
import 'package:flutter_chatty/pages/message_page.dart';
import 'package:flutter_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.time,
    required this.unread,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MessagePage(),
            ),
          );
        },
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 55,
              height: 55,
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: titleTextStyle,
                ),
                Text(
                  text,
                  style: unread
                      ? subtitleTextStyle.copyWith(
                          color: blackColor,
                        )
                      : subtitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Text(
              time,
              style: subtitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
