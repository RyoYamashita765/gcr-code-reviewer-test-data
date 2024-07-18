#import <Foundation/Foundation.h>

@interface Customer : NSObject

@property (nonatomic, assign) BOOL isPremium;
@property (nonatomic, assign) NSInteger loyaltyYears;
@property (nonatomic, assign) NSInteger purchaseCount;

- (instancetype)initWithIsPremium:(BOOL)isPremium loyaltyYears:(NSInteger)loyaltyYears purchaseCount:(NSInteger)purchaseCount;

@end

@implementation Customer

- (instancetype)initWithIsPremium:(BOOL)isPremium loyaltyYears:(NSInteger)loyaltyYears purchaseCount:(NSInteger)purchaseCount {
    self = [super init];
    if (self) {
        _isPremium = isPremium;
        _loyaltyYears = loyaltyYears;
        _purchaseCount = purchaseCount;
    }
    return self;
}

@end

NSInteger getDiscountPercentage(Customer *customer) {
    if (customer.isPremium) {
        if (customer.loyaltyYears > 5) {
            return 20;
        } else {
            return 15;
        }
    } else {
        if (customer.purchaseCount > 10) {
            return 10;
        } else {
            return 5;
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Customer *customer = [[Customer alloc] initWithIsPremium:YES loyaltyYears:6 purchaseCount:10];
        NSInteger discount = getDiscountPercentage(customer);
        
        NSLog(@"Customer: %@, %ld, %ld", customer.isPremium ? @"YES" : @"NO", (long)customer.loyaltyYears, (long)customer.purchaseCount);
        NSLog(@"Discount: %ld%%", (long)discount);
    }
    return 0;
}
