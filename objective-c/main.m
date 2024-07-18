#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *result;
        
        if (argc <= 1) {
            result = @"Hello, World!";
        } else {
            NSString *name = [NSString stringWithUTF8String:argv[1]];
            result = [NSString stringWithFormat:@"Hello, %@!", name];
        }
        
        NSLog(@"%@", result);
    }
    return 0;
}
