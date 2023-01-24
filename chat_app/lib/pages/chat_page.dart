import 'package:chat_app/models/message.dart';
import 'package:chat_app/pages/cubits/login_cubit/chat_cubit/chat_cubit.dart';
import 'package:chat_app/widgets/chat_buble.dart';
import 'package:chat_app/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatelessWidget {
  static String id = 'Chat Page';

  // FirebaseFirestore firestore = FirebaseFirestore.instance;
  // CollectionReference users = firestore.collection('users');
  TextEditingController controller = TextEditingController();
  ScrollController _scrollController = new ScrollController();
  List<Message> messagesList = [];

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              kLogo,
              height: 50,
            ),
            Text(' chat'),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [
          Expanded(
            child: BlocBuilder<ChatCubit, ChatState>(
              builder: (context, state) {
                var messagesList =
                    BlocProvider.of<ChatCubit>(context).messagesList;
                return ListView.builder(
                  reverse: true,
                  controller: _scrollController,
                  itemCount: messagesList.length,
                  itemBuilder: (context, index) {
                    return messagesList[index].id == email
                        ? ChatBuble(
                            message: messagesList[index],
                          )
                        : ChatBubleForFriend(message: messagesList[index]);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: controller,
              onSubmitted: (data) {
                // messages.add({
                //   KMessage: data,
                //   kCreatedAt: DateTime.now(),
                //   'id': email
                // });
                controller.clear();
                _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 500),
                );
              },
              decoration: InputDecoration(
                hintText: 'Send Message',
                suffixIcon: Icon(Icons.send),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
