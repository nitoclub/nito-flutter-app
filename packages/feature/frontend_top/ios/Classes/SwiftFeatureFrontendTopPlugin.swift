import Flutter
import UIKit

public class SwiftFeatureFrontendTopPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "feature_frontend_top", binaryMessenger: registrar.messenger())
    let instance = SwiftFeatureFrontendTopPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
