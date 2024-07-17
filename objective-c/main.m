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
}
@end

@interface Student : Person {
    NSString *school;
    int gradeNumber;
    NSString *jobName;
    NSString *hobbyName;
}
- (void)setSchool:(NSString *)newSchool;
- (NSString *)getSchool;
@end

@implementation Student
- (void)setSchool:(NSString *)newSchool {
    self->school = newSchool;
}
- (NSString *)getSchool {
    return self->school;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] init];
        [person setName:@"John"];
        [person setAge:20];

        Student *student = [[Student alloc] init];
        [student setName:@"Jane"];
        [student setAge:21];
        [student setSchool:@"University of FooBar"];
        NSLog(@"Name: %@, Age: %d, School: %@", [student getName], [student getAge], [student getSchool]);
    }
    return 0;
}
