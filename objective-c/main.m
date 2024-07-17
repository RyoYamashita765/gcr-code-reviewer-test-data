#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        Person *personData = [[Person alloc] init];
        [personData hello];
        NSLog(@"Goodbye, World!");
    }
    return 0;
}
