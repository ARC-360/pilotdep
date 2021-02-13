class InMemoryCache {
  factory InMemoryCache() {
    return _singleton;
  }

  InMemoryCache._internal();
  static final InMemoryCache _singleton = InMemoryCache._internal();
  static Map<String, dynamic> store = {};

  dynamic get(String key) {
    if (store.containsKey(key)) {
      return store[key];
    }
    else
      return null;
  }

  bool set(String key, dynamic value) {
    store[key] = value;
    return true;
  }

  dynamic clear() {
    store = {};
  }
}
