#import "Samplelib.h"
#import <XCObjc/Addition.h>

@implementation Samplelib
RCT_EXPORT_MODULE()

// Example method
// See // https://reactnative.dev/docs/native-modules-ios
RCT_EXPORT_METHOD(multiply:(double)a
                  b:(double)b
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
{
    NSNumber *result = @(a * b);

    resolve(result);
}

RCT_EXPORT_METHOD(add:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
{
Addition *addition = [[Addition alloc] init];
int result = [addition add];
NSNumber *resultNumber = [NSNumber numberWithInt:result];
resolve(resultNumber);
}


@end
