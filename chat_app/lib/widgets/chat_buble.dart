import 'package:chat_app/models/message.dart';
import 'package:chat_app/widgets/constants.dart';
import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({
    Key? key,
    required this.message,
  }) : super(key: key);

 final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        // padding: EdgeInsets.only(
        //   left: 16,
        //   top:16,
        //   bottom: 16,
        //   right: 16,
        // ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Text(
          message.message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32),
            topLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
class ChatBubleForFriend extends StatelessWidget {
  const ChatBubleForFriend({
    Key? key,
    required this.message,
  }) : super(key: key);

 final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        // padding: EdgeInsets.only(
        //   left: 16,
        //   top:16,
        //   bottom: 16,
        //   right: 16,
        // ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Text(
          message.message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32),
            topLeft: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
          color:Color(0xff006D84),
        ),
      ),
    );
  }
}
