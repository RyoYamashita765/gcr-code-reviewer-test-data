#import <Foundation/Foundation.h>

@interface User : NSObject
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *email;

- (instancetype)initWithUsername:(NSString *)username email:(NSString *)email;
@end

@implementation User
- (instancetype)initWithUsername:(NSString *)username email:(NSString *)email {
    self = [super init];
    if (self) {
        _username = username;
        _email = email;
    }
    return self;
}
@end

@interface UserRepository : NSObject
- (BOOL)isEmailTaken:(NSString *)email;
- (void)saveUser:(User *)user;
@end

@implementation UserRepository
- (BOOL)isEmailTaken:(NSString *)email {
    // Assume SampleDatabase is a class with class methods
    User *user = [SampleDatabase findUserByEmail:email];
    return user != nil;
}

- (void)saveUser:(User *)user {
    [SampleDatabase saveUser:user];
}
@end

@interface EmailService : NSObject
- (void)sendWelcomeEmail:(NSString *)email;
@end

@implementation EmailService
- (void)sendWelcomeEmail:(NSString *)email {
    // Assume SampleClient is a class with class methods
    [SampleClient sendEmail:email withMessage:@"Welcome to our service!"];
}
@end

@interface UserService : NSObject
@property (nonatomic, strong) UserRepository *userRepository;
@property (nonatomic, strong) EmailService *emailService;
@end

@implementation UserService

- (instancetype)init {
    self = [super init];
    if (self) {
        _userRepository = [[UserRepository alloc] init];
        _emailService = [[EmailService alloc] init];
    }
    return self;
}

- (void)registerUserWithUsername:(NSString *)username email:(NSString *)email {
    if ([self.userRepository isEmailTaken:email]) {
        @throw [NSException exceptionWithName:NSInvalidArgumentException
                                       reason:@"Email is already registered"
                                     userInfo:nil];
    }
    
    User *user = [[User alloc] initWithUsername:username email:email];
    [self.userRepository saveUser:user];
    [self.emailService sendWelcomeEmail:email];
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        UserService *userService = [[UserService alloc] init];
        @try {
            [userService registerUserWithUsername:@"johndoe" email:@"john@example.com"];
            NSLog(@"User registered successfully");
        } @catch (NSException *exception) {
            NSLog(@"Failed to register user: %@", exception.reason);
        }
    }
    return 0;
}
