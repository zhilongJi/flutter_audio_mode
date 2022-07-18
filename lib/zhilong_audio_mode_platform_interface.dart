import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'zhilong_audio_mode_method_channel.dart';

abstract class ZhilongAudioModePlatform extends PlatformInterface {
  /// Constructs a ZhilongAudioModePlatform.
  ZhilongAudioModePlatform() : super(token: _token);

  static final Object _token = Object();

  static ZhilongAudioModePlatform _instance = MethodChannelZhilongAudioMode();

  /// The default instance of [ZhilongAudioModePlatform] to use.
  ///
  /// Defaults to [MethodChannelZhilongAudioMode].
  static ZhilongAudioModePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ZhilongAudioModePlatform] when
  /// they register themselves.
  static set instance(ZhilongAudioModePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> setCall() {
    throw UnimplementedError('setCall() has not been implemented.');
  }

  Future<String?> setNormal() {
    throw UnimplementedError('setNormal() has not been implemented.');
  }
}
