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
- (void)helloWorld {
    NSLog(@"Hello, World!");
    NSLog(@"Name: %@", [self getName]);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] init];
        [person setName:@"John"];
        [person setAge:20];
        [person helloWorld];
    }
    return 0;
}
