//
//  SecondViewController.h
//  day2-lab1
//
//  Created by JETSMobileLabMini10 on 14/04/2025.
//

#import <UIKit/UIKit.h>
#import "MyDelegate.h"


NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property NSString* name;
@property id<MyDelegate> ref;

@end

NS_ASSUME_NONNULL_END
