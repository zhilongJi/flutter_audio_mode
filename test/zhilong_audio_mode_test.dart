import 'package:flutter_test/flutter_test.dart';
import 'package:zhilong_audio_mode/zhilong_audio_mode.dart';
import 'package:zhilong_audio_mode/zhilong_audio_mode_platform_interface.dart';
import 'package:zhilong_audio_mode/zhilong_audio_mode_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockZhilongAudioModePlatform 
    with MockPlatformInterfaceMixin
    implements ZhilongAudioModePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ZhilongAudioModePlatform initialPlatform = ZhilongAudioModePlatform.instance;

  test('$MethodChannelZhilongAudioMode is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelZhilongAudioMode>());
  });

  test('getPlatformVersion', () async {
    ZhilongAudioMode zhilongAudioModePlugin = ZhilongAudioMode();
    MockZhilongAudioModePlatform fakePlatform = MockZhilongAudioModePlatform();
    ZhilongAudioModePlatform.instance = fakePlatform;
  
    expect(await zhilongAudioModePlugin.getPlatformVersion(), '42');
  });
}
