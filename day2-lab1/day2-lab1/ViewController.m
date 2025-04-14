//
//  ViewController.m
//  day2-lab1
//
//  Created by JETSMobileLabMini10 on 14/04/2025.
//

#import "ViewController.h"

#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tfInput;

@end

@implementation ViewController
- (IBAction)goToSecondScreen:(id)sender {
    
    SecondViewController* secondScreen = [self.storyboard instantiateViewControllerWithIdentifier: @"second"];
    secondScreen.ref = self;
    secondScreen.name = _tfInput.text;
    
    [ self.navigationController pushViewController:secondScreen animated:YES ];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)clearText {
    _tfInput.text = @"";
}


@end
