#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = nil;
        NSLog(@"The length of str1 is %lu", (unsigned long)[str1 length]);
        
        NSArray *arr = @[@1, @2, @3];
        id element = arr[4];
        NSLog(@"Element at index 4: %@", element);
    }
    return 0;
}
