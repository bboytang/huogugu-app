import Foundation
import Capacitor

@objc(HuoguguPlugin)
public class HuoguguPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "HuoguguPlugin"
    public let jsName = "Huogugu"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getLaunchUrl", returnType: CAPPluginReturnPromise)
    ]

    @objc func getLaunchUrl(_ call: CAPPluginCall) {
        if let url = AppDelegate.launchUrl {
            call.resolve(["url": url])
        } else {
            call.resolve(["url": ""])
        }
    }
}