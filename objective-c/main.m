#import <Foundation/Foundation.h>

@interface Logger : NSObject
- (void)logWithMessage:(NSString *)message;
@end

@implementation Logger
- (void)logWithMessage:(NSString *)message {
    NSLog(@"Logging: %@", message);
}
@end

@interface FileLogger : Logger
- (void)saveToFile:(NSString *)fileName;
@end

@implementation FileLogger
- (void)saveToFile:(NSString *)fileName {
    NSLog(@"Saving to file: %@", fileName);
}
@end

@interface NetworkLogger : Logger
- (void)sendToServer:(NSString *)url;
@end

@implementation NetworkLogger
- (void)sendToServer:(NSString *)url {
    NSLog(@"Sending to server: %@", url);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FileLogger *fileLogger = [[FileLogger alloc] init];
        [fileLogger logWithMessage:@"File log message"];
        [fileLogger saveToFile:@"log.txt"];

        NetworkLogger *networkLogger = [[NetworkLogger alloc] init];
        [networkLogger logWithMessage:@"Network log message"];
        [networkLogger sendToServer:@"http://example.com"];
    }
    return 0;
}
