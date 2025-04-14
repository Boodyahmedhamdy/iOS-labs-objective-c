//
//  ViewController.m
//  day1-lab5
//
//  Created by JETSMobileLabMini10 on 13/04/2025.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tfInput;
@property (weak, nonatomic) IBOutlet UILabel *txtResult;



@end

@implementation ViewController
- (IBAction)checkInput:(id)sender {
    NSString* inputString = _tfInput.text;
    
    
    NSNumberFormatter* formatter = [NSNumberFormatter new];
    NSNumber* result = [formatter numberFromString:inputString];
    
    if(result == nil) {
        _txtResult.text = @"String";
    } else {
        _txtResult.text = @"Numeric";
    }
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
