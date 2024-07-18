#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int argCount = argc - 1;

        if (argCount > 0) {
            if (argCount > 1) {
                if (argCount > 2) {
                    NSLog(@"Too many arguments");
                } else {
                    NSLog(@"Two arguments");
                }
            } else {
                NSLog(@"One argument");
            }
        } else {
            NSLog(@"No arguments");
        }
    }
    return 0;
}
