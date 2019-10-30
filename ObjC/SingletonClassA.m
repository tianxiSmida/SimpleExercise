#import <Foundation/Foundation.h>
#import <ApplicationServices/ApplicationServices.h>

#import "SingletonClassA.h"

@implementation SingletonClassA
static SingletonClassA * classA = nil;
static dispatch_once_t onceToken;

+ (instancetype)classA {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        classA = [[SingletonClassA alloc] init];
    });
    return classA;
}

- (void)dealloc {
    NSLog(@"Dealloc");
    [super dealloc];
}

- (void)hello {
    NSLog(@"Hello");
}

+ (void)reset
{
    @synchronized (self) {
        [classA release];
        classA = nil;
        onceToken = 0;
    }
}
@end
