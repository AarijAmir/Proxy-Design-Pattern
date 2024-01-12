import 'internet.dart';

void main(List<String> args) {
  Internet internet = ProxyInternet();
  try {
    internet.connectTo('www.aarij.com');
  } catch (e) {
    print('ERROR: Something went wrong, ERROR Message = $e');
  }
}
