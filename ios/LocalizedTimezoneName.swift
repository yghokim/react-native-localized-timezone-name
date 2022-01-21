import Foundation

@objc(LocalizedTimezoneName)
class LocalizedTimezoneName: NSObject {

    @objc
    func getLocalizedTimeZoneName(timeZone: NSString, locale: NSString) -> NSString{
        let tz = NSTimeZone(name: timeZone as String)!
        return tz.localizedName(.standard, locale: Locale.init(identifier: locale as String)) as! NSString
    }
}
