#import <Foundation/Foundation.h>

@interface Car : NSObject;
@end

@implementation Car;
- (void)startEngine {
    NSLog(@"Vroom!");
}
@end

@interface Bicycle : NSObject {
    NSString *name;
}
- (NSString *)getName;
@end

@implementation Bicycle;
- (NSString *)getName {
    return name;
}
@end

@interface Motorcycle : NSObject
@end

@implementation Motorcycle;
- (void)startEngine {
    NSLog(@"Vroom!");
}
- (void)stopEngine {
    NSLog(@"Silence...");
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        NSLog(@"Hello, World!");
    }
    return 0;
}
