enum AppEnvironment {
  Development,
  Staging,
  Production,
}

/// Http işlemerinde kullanılmakta
enum HttpMethod { get, post, put, delete, update }

enum DeviceType { IOS, ANDROID, WINDOWS, FUCHSIA, MACOS }

/// [SocketStatus] socket bağlantı dururmu
enum SocketStatus {
  init,
  connect,
  connecting,
  error,
  connectError,
  connectTimeout,
  disconnect,
}
