import 'zhilong_audio_mode_platform_interface.dart';

class ZhilongAudioMode {
  Future<String?> setCall() {
    return ZhilongAudioModePlatform.instance.setCall();
  }

  Future<String?> setNormal() {
    return ZhilongAudioModePlatform.instance.setNormal();
  }
}
