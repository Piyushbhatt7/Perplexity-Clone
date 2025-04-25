import 'dart:async';
import 'dart:convert';
import 'dart:html';

class ChatWebService {
  static final _instance = ChatWebService._internal();
  WebSocket? _socket;

 factory ChatWebService() => _instance;
 ChatWebService._internal();
 final _searchResultController = StreamController<Map<String, dynamic>>();
 final _contentController = StreamController<Map<String, dynamic>>();

 Stream<Map<String, dynamic>> get searchResultStream =>
      _searchResultController.stream;

      Stream<Map<String, dynamic>> get contentStream =>
      _contentController.stream;
  void connect() {
    _socket = WebSocket('ws://localhost:8000/ws/chat');

    _socket!.onOpen.listen((_) {
      print("Connected (Web)");
    });

    _socket!.onMessage.listen((event) {
      final data = json.decode(event.data!);
      if(data['type'] == 'searchController'){
        _searchResultController.add(data);
      }

      else if(data['type'] == 'content') {
        _contentController.add(data);
      }
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
// 2:12:37                         