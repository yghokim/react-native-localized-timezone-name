#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(LocalizedTimezoneName, NSObject)

RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(getLocalizedTimeZoneName:(NSString)timeZone locale:(NSString)locale)

@end
