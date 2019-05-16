#import <Foundation/Foundation.h>
#import <ApplicationServices/ApplicationServices.h>

@interface SingletonClassA : NSObject
+ (instancetype)classA;
- (void)hello;
+ (void)reset;
@end
