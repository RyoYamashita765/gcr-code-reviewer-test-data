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
        switch ([person getAge] * 1) {
            case 30:
                NSLog(@"Age is 30");
                break;
            default:
                NSLog(@"Age is not 30");
                NSLog(@"Age is %d", [person getAge]);
                break;
        }
    }
    return 0;
}
