import 'dart:convert';
import 'dart:io';

class ChatWebService {

  WebSocket? _socket;
  void connect() {
    _socket = WebSocket(Uri.parse("ws://localhost:8000/ws/chat"));

    _socket!.messages.listen((message) {
      final data = json.decode(message);
      print(message);
    });
  }

  void send()
  {

  }
}