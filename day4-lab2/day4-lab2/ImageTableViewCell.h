//
//  ImageTableViewCell.h
//  day4-lab2
//
//  Created by JETSMobileLabMini10 on 16/04/2025.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *img;

-(instancetype) initWithLabel: (NSString*) label andImagePath: (NSString*) imagePath;

@end

NS_ASSUME_NONNULL_END
