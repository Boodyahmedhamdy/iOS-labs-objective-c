//
//  Item.h
//  day4-lab2
//
//  Created by JETSMobileLabMini10 on 16/04/2025.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Item : NSObject

@property NSString* imagePath;
@property NSString* label;

-(instancetype) initWithImagePath: (NSString*) path andLabel: (NSString*) label;

@end

NS_ASSUME_NONNULL_END
