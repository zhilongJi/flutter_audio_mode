import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'zhilong_audio_mode_platform_interface.dart';

/// An implementation of [ZhilongAudioModePlatform] that uses method channels.
class MethodChannelZhilongAudioMode extends ZhilongAudioModePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('zhilong_audio_mode');

  @override
  Future<String?> setCall() async {
    final res = await methodChannel.invokeMethod<String>('setCall');
    return res;
  }

  @override
  Future<String?> setNormal() async {
    final res = await methodChannel.invokeMethod<String>('setNormal');
    return res;
  }
}
