#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *personData = [[Person alloc] init];
        [personData hello];
    }
    return 0;
}
