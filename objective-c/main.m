#import <Foundation/Foundation.h>

@interface Car : NSObject;
@end

@implementation Car;
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        NSLog(@"Hello, World!");
    }
    return 0;
}
