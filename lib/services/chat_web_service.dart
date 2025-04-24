import 'dart:convert';
import 'dart:html';

class ChatWebService {
  static final _instance = ChatWebService._internal();
  WebSocket? _socket;

 fc
  void connect() {
    _socket = WebSocket('ws://localhost:8000/ws/chat');

    _socket!.onOpen.listen((_) {
      print("Connected (Web)");
    });

    _socket!.onMessage.listen((event) {
      final data = json.decode(event.data!);
      print(data['type']);
    });

    _socket!.onError.listen((e) => print("WebSocket error: $e"));
    _socket!.onClose.listen((_) => print("WebSocket closed"));
  }

  void chat(String query) {
    if (_socket != null) {
       print(_socket);
      _socket!.send(json.encode({'query': query}));
    }
  }
}
// 2:08:40