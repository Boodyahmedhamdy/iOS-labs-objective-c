//
//  Collegue.h
//  day2-lab3
//
//  Created by JETSMobileLabMini10 on 14/04/2025.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Collegue : NSObject
@property NSString* name;
@property NSInteger age;
@property NSString* title;
@property NSString* email;

- (instancetype) initWithName: (NSString*) name;

- (instancetype) initWithName: (NSString*) name andAge: (NSInteger) age andTitle: (NSString*) title andEmail: (NSString*) email;
@end

NS_ASSUME_NONNULL_END
