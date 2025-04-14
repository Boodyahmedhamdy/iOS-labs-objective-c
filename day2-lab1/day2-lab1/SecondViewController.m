//
//  SecondViewController.m
//  day2-lab1
//
//  Created by JETSMobileLabMini10 on 14/04/2025.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;



@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _nameLabel.text = [NSString stringWithFormat:@"Hi, %@", _name];
    
    
    
}
- (IBAction)backToHome:(id)sender {
    [_ref clearText];
    [self.navigationController popViewControllerAnimated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
