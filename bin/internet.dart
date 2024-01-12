part 'real_internet.dart';
part 'proxy_internet.dart';

abstract class Internet {
  void connectTo(String serverHost);
}
