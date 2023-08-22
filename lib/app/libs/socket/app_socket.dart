import 'dart:async';
import 'dart:developer' show log;
import 'dart:io' show WebSocket;

import '../../constants/enum/general_enum.dart';

typedef OnStatusChange = Function(SocketStatus);

class AppSocket {
  final StreamController<String> controller = StreamController.broadcast(sync: true);
  WebSocket? _channel;
  final String url;
  final Map<String, String>? header;
  final OnStatusChange onStatusChange;

  AppSocket({
    required this.url,
    this.header,
    required this.onStatusChange,
  });

  Future<void> close() async {
    controller.done;
    _channel?.close();
    _channel = null;
    _log('close');
  }

  Future init() async {
    _log("conecting...");
    onStatusChange(SocketStatus.connecting);
    _channel = await _connectToSocket();
    onStatusChange(SocketStatus.connect);
    _log("socket connection initializied");
    _channel!.done.then(_thenDone);
    _channel!.listen(_listen, onDone: _onDone, onError: _onError);
  }

  void _thenDone(value) {
    if (_channel == null) return;
    _log('then done');
    init();
  }

  void _listen(data) {
    _log('WebSocket Data: $data');
    controller.add(data);
  }

  void _onError(e) {
    onStatusChange(SocketStatus.error);
    _log('Server error: $e');
    init();
  }

  void _onDone() {
    if (_channel == null) return;
    onStatusChange(SocketStatus.disconnect);
    _log("conecting aborted");
    init();
  }

  Future<WebSocket> _connectToSocket() async {
    try {
      return await WebSocket.connect(url, headers: header);
    } catch (e) {
      _log("Error! can not connect WS connectWs $e");
      await Future.delayed(const Duration(seconds: 1));
      return await _connectToSocket();
    }
  }

  void send(String data) {
    _log('Sended Data: $data');
    _channel!.add(data);
  }

  void _log(String message) => log(message, name: 'socket');
}
