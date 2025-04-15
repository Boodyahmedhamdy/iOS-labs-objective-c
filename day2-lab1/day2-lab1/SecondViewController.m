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
    
    
//    self.navigationItem.rightBarButtonItem = self.editButtonItem;
//    self.navigationItem.rightBarButtonItem.title = @"Clear";
//    self.navigationItem.rightBarButtonItem.action = @selector(backToHome:);
    
    UIBarButtonItem* clearBtn = [[UIBarButtonItem alloc] initWithTitle:@"Clear and back" style:UIBarButtonItemStylePlain target:self action:@selector(backToHome:)];
    
    self.navigationItem.rightBarButtonItem = clearBtn;
    
}

- (void) goback {
    NSLog(@"goback");
    [_ref clearText];
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)backToHome:(id)sender {
    NSLog(@"back to home");
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
