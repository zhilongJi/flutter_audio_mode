import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zhilong_audio_mode/zhilong_audio_mode_method_channel.dart';

void main() {
  MethodChannelZhilongAudioMode platform = MethodChannelZhilongAudioMode();
  const MethodChannel channel = MethodChannel('zhilong_audio_mode');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
