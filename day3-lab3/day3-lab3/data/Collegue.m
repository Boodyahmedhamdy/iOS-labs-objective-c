//
//  Collegue.m
//  day2-lab3
//
//  Created by JETSMobileLabMini10 on 14/04/2025.
//

#import "Collegue.h"

@implementation Collegue

- (instancetype)initWithName:(NSString *)name {
    _name = name;
    return self;
}

- (nonnull instancetype)initWithName:(nonnull NSString *)name andAge:(NSInteger)age andTitle:(nonnull NSString *)title andEmail:(nonnull NSString *)email {
    _name = name;
    _age = age;
    _title = title;
    _email = email;
    
    return self;
    
}
@end
