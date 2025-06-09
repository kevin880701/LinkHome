import UIKit
import Flutter
import GoogleSignIn
import UserNotifications

@main
@objc class AppDelegate: FlutterAppDelegate {
  var googleSignInConfig: GIDConfiguration?

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // 使用 GIDConfiguration 初始化 Google Sign-In
    googleSignInConfig = GIDConfiguration(clientID: "237177868286-gjcg1u2jnfbr55trcp9qr2ojf0dpt8d7.apps.googleusercontent.com")

    GeneratedPluginRegistrant.register(with: self)
      UNUserNotificationCenter.current().delegate = self
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  override func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
    return GIDSignIn.sharedInstance.handle(url)
  }
    
  
    override func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
            if #available(iOS 14.0, *) {
                completionHandler([.banner, .sound, .badge])
            } else {
                completionHandler([.alert, .sound, .badge])
            }
    }
}
