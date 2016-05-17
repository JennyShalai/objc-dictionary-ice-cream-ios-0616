//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSArray *)namesForIceCream:(NSString *)iceCream;

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName;

@end

