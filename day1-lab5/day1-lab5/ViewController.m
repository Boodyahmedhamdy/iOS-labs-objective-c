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
    
    for(int i = 0 ; i < inputString.length ; i++) {
        if( isnumber( [inputString characterAtIndex:i] ) ) {
            _txtResult.text = @"Numeric";
            return;
        }
    }
    _txtResult.text = @"String";
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
