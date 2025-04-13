//
//  ViewController.m
//  day1-lab4
//
//  Created by JETSMobileLabMini10 on 13/04/2025.
//

#import "ViewController.h"

@interface ViewController ()
@property int currentIndex;
@property (weak, nonatomic) IBOutlet UILabel *currentName;
@property NSArray* collegues;

@end

@implementation ViewController
- (IBAction)getNext:(id)sender {
    if(_currentIndex >= _collegues.count-1) { _currentIndex = 0; }
    else _currentIndex ++;
    
    _currentName.text = _collegues[_currentIndex];
    
}
- (IBAction)getPrevious:(id)sender {
    if(_currentIndex == 0) {
        _currentIndex = _collegues.count - 1;
    } else {
        _currentIndex--;
    }
    
    _currentName.text = _collegues[_currentIndex];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _currentIndex  = 0;
    // Do any additional setup after loading the view.
    _collegues = @[ @"boody", @"ahmed", @"hamdy", @"hassan" ];
    
    _currentName.text = _collegues[_currentIndex];
    
}


@end
