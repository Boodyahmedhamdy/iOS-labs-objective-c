//
//  ViewController.m
//  day2-lab3
//
//  Created by JETSMobileLabMini10 on 14/04/2025.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _nameLabel.text = _collegue.name;
    _ageLabel.text = [ @(_collegue.age) stringValue];
    _emailLabel.text = _collegue.email;
    _titleLabel.text = _collegue.title;
}


@end
