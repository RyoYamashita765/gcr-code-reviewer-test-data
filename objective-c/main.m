#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        Person *person = [[Person alloc] init];
        [person hello];
        NSLog(@"Goodbye, World!");
    }
    return 0;
}
