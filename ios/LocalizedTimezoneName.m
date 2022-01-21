#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(LocalizedTimezoneName, NSObject)

RCT_EXTERN_METHOD(getLocalizedTimeZoneName:(NSString *)timeZone locale:(NSString *)locale: completion:(RCTResponseSenderBlock *)callback)

@end
