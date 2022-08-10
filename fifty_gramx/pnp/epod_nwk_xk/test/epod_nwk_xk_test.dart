import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:epod_nwk_xk/epod_nwk_xk.dart';

void main() {
  const MethodChannel channel = MethodChannel('epod_nwk_xk');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await EpodNwkXk.platformVersion, '42');
  });
}
