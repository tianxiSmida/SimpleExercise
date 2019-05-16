#import <Foundation/Foundation.h>
#import <ApplicationServices/ApplicationServices.h>

#import "SingletonClassA.h"

void doSomething() {
    NSLog(@"xxx");
    [[SingletonClassA classA] hello];
    [SingletonClassA reset];
}

int main(int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSUserDefaults *args = [NSUserDefaults standardUserDefaults];
    
    int x = [args integerForKey:@"x"];
    int y = [args integerForKey:@"y"];
    
    doSomething();
    
    while (1) {
        
    }

    [pool release];
    return 0;
}

