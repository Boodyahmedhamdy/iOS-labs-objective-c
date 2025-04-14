//
//  ViewController.m
//  day1-lab6
//
//  Created by JETSMobileLabMini10 on 13/04/2025.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *inputLabel;

@property NSString* inputString;

@end

@implementation ViewController
- (IBAction)performAction:(id)sender {
    int tag = [sender tag];
    
    switch (tag) {
        case 1:
            
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"1"];
            
            
            break;
            
        case 2:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"2"];

            break;
            
        case 3:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"3"];

            break;
            
        case 5:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"4"];

            break;
            
        case 6:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"5"];

            break;
            
            
        case 7:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"6"];

            break;

        case 8:
            _inputLabel.text = @"";
            break;
            
        case 9:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"7"];

            break;
            
        case 10:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"8"];

            break;
            
        case 11:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"9"];
            break;
            
        case 12:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"0"];
            break;
            
        case 13:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"x"];
            break;
            
        case 14:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"/"];
            break;
            
        case 15:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"-"];
            break;
            
        case 16:
            _inputLabel.text = [_inputLabel.text stringByAppendingString: @"+"];
            break;
            
        case 4:
            [self evaluateExpression: _inputLabel.text];
            break;
            
        default:
            break;
    }
}

-(void) evaluateExpression: (NSString*) expression {
    
    @try {
        NSExpression *exp= [NSExpression expressionWithFormat: expression];
        NSLog(@"%@", [exp expressionValueWithObject:nil context:nil]);
        NSLog(@"%@", [exp expressionValueWithObject:expression context:nil]);
        
        NSNumber* result = [exp expressionValueWithObject:nil context:nil];
        
        
        _inputLabel.text = [result stringValue];
        
    } @catch (NSException *exception) {
        _inputLabel.text = @"wrong math";
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
