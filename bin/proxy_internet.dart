part of 'internet.dart';

class ProxyInternet implements Internet {
  Internet _internet = _RealInternet();
  static List<String> bannedSites = [
    'www.xxx.com',
    'www.iub.edu.pk',
    'www.xnxx.com',
    'www.abc.com',
    'www.cas.org.pk',
    'www.nust.com'
  ];
  @override
  void connectTo(String serverHost) {
    // TODO: implement connectTo
    if (bannedSites.contains(serverHost.toLowerCase())) {
      throw Exception('Access to these sites are denied');
    } else {
      return _internet.connectTo(serverHost);
    }
  }
}
