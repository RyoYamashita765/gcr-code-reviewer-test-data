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
        NSLog(@"Hello, World!");
        Person *person = [[Person alloc] init];
        [person setName:@"John"];
        [person setAge:30];
        NSLog(@"Name: %@", [person getName]);
        NSLog(@"Age: %d", [person getAge]);
        for (int i = 0; i <= 10; i++) {
            NSLog(@"i = [%d]", i);
            NSLog(@"i * i = [%d]", i * i);
            NSLog(@"----------------");
        }
    }
    return 0;
}
