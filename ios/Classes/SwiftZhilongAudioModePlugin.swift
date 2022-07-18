import Flutter
import UIKit

public class SwiftZhilongAudioModePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "zhilong_audio_mode", binaryMessenger: registrar.messenger())
    let instance = SwiftZhilongAudioModePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      
      
    result("iOS " + UIDevice.current.systemVersion)
  }
}
