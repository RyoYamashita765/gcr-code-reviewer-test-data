#import <Foundation/Foundation.h>

@interface Car : NSObject;
@end

@implementation Car;
@end

@interface Bicycle : NSObject;
- (void) startEngine;
@end

@implementation Bicycle;
- (void) startEngine {
    NSLog(@"startEngine: %@", self);
    NSLog(@"Go!");
}
@end

@interface Motorcycle : NSObject;
- (void) startEngine;
@end

@implementation Motorcycle;
- (void) startEngine {
    NSLog(@"startEngine: %@", self);
    NSLog(@"Vroom!");
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        NSLog(@"Hello, World!");
        Bicycle *bicycle = [[Bicycle alloc] init];
        [bicycle startEngine];
        Motorcycle *motorcycle = [[Motorcycle alloc] init];
        [motorcycle startEngine];
    }
    return 0;
}
