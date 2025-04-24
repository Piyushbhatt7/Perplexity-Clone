import 'dart:convert';
import 'dart:io';

class ChatWebService {

  WebSocket? _socket;
  void connect() {
    WebSocket.connect("ws://localhost:8000/ws/chat").then((socket) {
      _socket = socket;
      _socket!.listen((message) {
        final data = json.decode(message);
        print(data['type']);
      });
    }).catchError((error) {
      print("Failed to connect: $error");
    });

    // Removed erroneous _socket!.messages.listen block as it is not defined for WebSocket.
  }

  void send()
  {

  }
}