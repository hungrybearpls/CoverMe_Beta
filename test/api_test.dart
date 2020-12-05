import 'package:flutter_devfest/home/home_provider.dart';
import 'package:flutter_devfest/network/index.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(("Api tests"), () {
    test(
      "Should Fetch Bars List",
      () async {
        IClient _client = MockClient();
        final res = await _client.getAsync(HomeProvider.kConstGetBarsUrl);
        print(res.mappedResult);
        expect(res.networkServiceResponse.success, isTrue);
      },
    );
    test(
      "Should Fetch Session List",
      () async {
        IClient _client = MockClient();
        final res =
            await _client.getAsync(HomeProvider.kConstGetNotificationsUrl);
        print(res.mappedResult);
        expect(res.networkServiceResponse.success, isTrue);
      },
    );
    test(
      "Should Fetch Club List",
      () async {
        IClient _client = MockClient();
        final res = await _client.getAsync(HomeProvider.kConstGetClubsUrl);
        print(res.mappedResult);
        expect(res.networkServiceResponse.success, isTrue);
      },
    );
    test(
      "Should Fetch Restaurant List",
      () async {
        IClient _client = MockClient();
        final res =
            await _client.getAsync(HomeProvider.kConstGetRestaurantsUrl);
        print(res.mappedResult);
        expect(res.networkServiceResponse.success, isTrue);
      },
    );
  });
}
