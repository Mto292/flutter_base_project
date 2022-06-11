///  Business Logic'teki client class ları bu modelden extends edilecek.
///  Business Logic'teki Class türetildiği zaman bu modelin Constructor headerin gerekli parametrelerini dolduracak
///  daha sonra headere eklemek istediğimiz default parametreler hariç başka parametre eklemek istiyorsak
///  map paramtersine ekleyip [createHeader] metodunu çağırıyoruz.
class SessionHeaderModel {
  const SessionHeaderModel({
    required this.token,
  });

  final String token;
  final String lang = 'tr';

  Map<String, String> createHeader({Map<String, String> addMap = const {}}) {
    final Map<String, String> _map = {
      "content-type": "application/json",
      "authorization": 'Bearer $token',
      "lang": lang,
    };
    _map.addAll(addMap);
    return _map;
  }
}
