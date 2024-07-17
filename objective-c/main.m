#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *name;
    int age;
}
- (void)setName:(NSString *)name;
- (void)setAge:(int)age;
- (NSString *)getName;
- (int)getAge;
@end

@implementation Person
- (void)setName:(NSString *)newName {
    self->name = newName;
}
- (void)setAge:(int)newAge {
    self->age = newAge;
}
- (NSString *)getName {
    return self->name;
}
- (int)getAge {
    return self->age;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Lorem ipsum dolor sit amet, consectetur adipiscing elit.");
        NSLog(@"Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.");
        NSLog(@"Hello, World!");
        Person *person = [[Person alloc] init];
        [person setName:@"John"];
        [person setAge:30];
        NSLog(@"Name: %@", [person getName]);
        NSLog(@"Age: %d", [person getAge]);
        NSLog(@"Goodbye, World!");
        NSLog(@"Duis aute irure dolor in reprehenderit in voluptate ...");
    }
    return 0;
}
