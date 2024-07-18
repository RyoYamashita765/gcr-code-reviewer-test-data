#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double radius = 5.0;
        double area = 3.141592 * radius * radius;
        NSLog(@"The area: %f", area);
    }
    return 0;
}
