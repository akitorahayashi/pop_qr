import Cocoa
import FlutterMacOS

@main
class AppDelegate: FlutterAppDelegate {
    override func applicationShouldTerminateAfterLastWindowClosed(_: NSApplication) -> Bool {
        return true
    }

    override func applicationSupportsSecureRestorableState(_: NSApplication) -> Bool {
        return true
    }
}
