import UIKit
import Capacitor

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    static var launchUrl: String?

    var window: UIWindow?

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        AppDelegate.launchUrl = url.absoluteString
        return CAPBridge.handleOpenUrl(url, options)
    }

    override open func capacitorDidLoad() {
        bridge?.registerPluginInstance(HuoguguPlugin())
    }
}