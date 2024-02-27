
#ifdef RCT_NEW_ARCH_ENABLED
#import "RNSamplelibSpec.h"

@interface Samplelib : NSObject <NativeSamplelibSpec>
#else
#import <React/RCTBridgeModule.h>

@interface Samplelib : NSObject <RCTBridgeModule>
#endif

@end
