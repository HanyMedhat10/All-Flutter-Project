// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:chat_app/widgets/constants.dart';
import 'package:flutter/foundation.dart';

class Message {
  final String message;
  final String id;
  Message(
    this.message,
    this.id,
  );

  factory Message.fromJson(jsonDate) {
    return Message(jsonDate[KMessage], jsonDate['id']);
  }
}
