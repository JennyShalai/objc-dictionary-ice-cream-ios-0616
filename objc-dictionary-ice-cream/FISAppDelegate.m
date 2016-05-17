//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *iceCreamPreferencesByPerson = @{@"Joe" : @"Peanut Butter and Chocolate",
                                                  @"Tim" : @"Natural Vanilla",
                                                  @"Sophie" : @"Mexican Chocolate",
                                                  @"Deniz" : @"Natural Vanilla",
                                                  @"Tom" : @"Mexican Chocolate",
                                                  @"Jim" : @"Natural Vanilla",
                                                  @"Mark" : @"Cookies 'n Cream"
                                                  };
    
    NSArray *peopleWhoLikeCurrentIceCream = [NSMutableArray new];
    NSArray *allValues = [iceCreamPreferencesByPerson allValues];
    
    for (NSString *value in allValues) {
        if ([value isEqualToString:iceCream]) {
            peopleWhoLikeCurrentIceCream = [iceCreamPreferencesByPerson allKeysForObject:iceCream];
        }
    }
    return peopleWhoLikeCurrentIceCream;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSDictionary *iceCreamPreferencesByPerson = @{@"Joe" : @"Peanut Butter and Chocolate",
                                                  @"Tim" : @"Natural Vanilla",
                                                  @"Sophie" : @"Mexican Chocolate",
                                                  @"Deniz" : @"Natural Vanilla",
                                                  @"Tom" : @"Mexican Chocolate",
                                                  @"Jim" : @"Natural Vanilla",
                                                  @"Mark" : @"Cookies 'n Cream"
                                                  };
    
    NSArray *allValues = [iceCreamPreferencesByPerson allValues];
    NSMutableDictionary *newDictionary = [[NSMutableDictionary alloc] init];
    for (NSString *value in allValues) {
        NSMutableArray *usedValues = [[NSMutableArray alloc] init];
        if (![usedValues containsObject:value]) {
            NSArray *peopleWhoLikeCurrentIceCream = [self namesForIceCream:value];
            NSUInteger numberOfPeopleWhoLikeCurrentIceCream = [peopleWhoLikeCurrentIceCream count];
            NSNumber *temp = @(numberOfPeopleWhoLikeCurrentIceCream);
            newDictionary[value] = temp;
            [usedValues addObject:value];
        }
    }
    return newDictionary;
}


@end
