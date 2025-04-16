//
//  ViewController.m
//  day4-lab1
//
//  Created by JETSMobileLabMini10 on 16/04/2025.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *ball;
@property (weak, nonatomic) IBOutlet UITabBarItem *tabbar;

@property UIDynamicAnimator* animator;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _ball.layer.cornerRadius = 50;
    _ball.backgroundColor = UIColor.greenColor;
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    
    [self startAnimation];
    
    
    
    
}

-(void) startAnimation {
    
    // add gravity
    UIGravityBehavior* gravityBehav = [[UIGravityBehavior alloc] initWithItems:@[self.ball]];
    [self.animator addBehavior:gravityBehav];
    
    // add boundry to tab bar
    UICollisionBehavior* collisionBehav = [[UICollisionBehavior alloc] initWithItems: @[ self.ball ] ];
    
    collisionBehav.collisionDelegate = self;
    
    [collisionBehav addBoundaryWithIdentifier:@"tabbar" fromPoint:self.tabBarController.tabBar.frame.origin toPoint: CGPointMake(self.tabBarController.tabBar.frame.origin.x + self.tabBarController.tabBar.frame.size.width, self.tabBarController.tabBar.frame.origin.y)];
    
    [self.animator addBehavior:collisionBehav];
    
    
    UIDynamicItemBehavior* elsBehav = [[UIDynamicItemBehavior alloc] initWithItems: @[ self.ball]];
    
    elsBehav.elasticity = 0.75;
    
    [self.animator addBehavior:elsBehav];
    
    
    
}

- (void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier atPoint:(CGPoint)p {
    
    UIView* view = item;
    
    view.backgroundColor = UIColor.blueColor;
    
}

- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier {
    UIView* view = item;
    view.backgroundColor = UIColor.greenColor;
}

@end
