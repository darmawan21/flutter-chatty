import 'package:flutter/material.dart';
import 'package:flutter_chatty/theme.dart';

class ChatBubble extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;
  final bool unread;

  ChatBubble({
    required this.imageUrl,
    required this.text,
    required this.time,
    required this.unread,
  });

  @override
  Widget build(BuildContext context) {
    return unread
        ? Padding(
            padding: EdgeInsets.only(
              left: 30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  imageUrl,
                  width: 40,
                  height: 40,
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 72,
                  decoration: BoxDecoration(
                    color: lightgreeyColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                        20,
                      ),
                      topLeft: Radius.circular(
                        20,
                      ),
                      topRight: Radius.circular(
                        20,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 19,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          text,
                          style: titleTextStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          time,
                          style: subtitleTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              left: 38,
              right: 30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 255,
                  height: 96,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        20,
                      ),
                      topLeft: Radius.circular(
                        20,
                      ),
                      topRight: Radius.circular(
                        20,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          text,
                          style: titleTextStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          time,
                          style: subtitleTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset(
                  imageUrl,
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          );
  }
}
