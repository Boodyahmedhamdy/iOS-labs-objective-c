//
//  ViewController.m
//  day1-lab3
//
//  Created by JETSMobileLabMini10 on 13/04/2025.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tfString;
@property (weak, nonatomic) IBOutlet UILabel *lString;

@end

@implementation ViewController
- (IBAction)copyAndPaste:(id)sender {
    
    _lString.text = _tfString.text;
    _tfString.text = @"";
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
