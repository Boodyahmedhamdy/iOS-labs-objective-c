//
//  ViewController.m
//  day1-lab1
//
//  Created by JETSMobileLabMini10 on 13/04/2025.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController
- (IBAction)sayHello:(id)sender {
    _label.text = @"Hello, World";
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
