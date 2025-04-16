//
//  ImageTableViewCell.m
//  day4-lab2
//
//  Created by JETSMobileLabMini10 on 16/04/2025.
//

#import "ImageTableViewCell.h"

@implementation ImageTableViewCell

- (instancetype)initWithLabel:(NSString *)label andImagePath:(NSString *)imagePath {
    _label.text = label;
    UIImage* uiImg = [UIImage imageNamed:imagePath];
    [_img setImage: uiImg];
    
    return self;
}


@end
