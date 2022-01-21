import Foundation

@objc(LocalizedTimezoneName)
class LocalizedTimezoneName: NSObject {

    @objc
    func getLocalizedTimeZoneName(timeZone: NSString, locale: NSString, completion callback: @escaping RCTResponseSenderBlock) -> NSString{
        do{
            let tz = NSTimeZone(name: timeZone as String)!
            let result = tz.localizedName(.standard, locale: Locale.init(identifier: locale as String)) as! NSString
            callback([NSNull(), result])
        }catch{
            callback(["Time zone error"])
        }
    }
}
