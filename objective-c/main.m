#import <Foundation/Foundation.h>

@interface Car : NSObject;
@end

@implementation Car;
@end

@interface Bicycle : NSObject {
    NSString *name;
}
@end

@implementation Bicycle;
@end

@interface Motorcycle : NSObject
@end

@implementation Motorcycle;
- (void)startEngine {
    NSLog(@"Vroom!");
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        NSLog(@"Hello, World!");
    }
    return 0;
}
