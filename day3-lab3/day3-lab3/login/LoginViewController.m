//
//  LoginViewController.m
//  day3-lab3
//
//  Created by JETSMobileLabMini10 on 16/04/2025.
//

#import "LoginViewController.h"
#import "../data/User.h"
#import "../home/HomeViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tfUsername;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;

@end

/**
 
 */

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)login:(id)sender {
    NSLog(@"login");
    NSString* username = _tfUsername.text;
    NSString* password = _tfPassword.text;
    
    // empty fields
    if(username.length == 0 || password.length == 0) {
        
        UIAlertController* usernameAlert = [UIAlertController alertControllerWithTitle:@"Error" message:@"all Fields must not be empty" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"clicked ok");
        }];
        
        [usernameAlert addAction:action];
        [self presentViewController:usernameAlert animated:YES completion:nil];
        
        return;
    }
    
//    User* user = [User new];
//    user.username = username;
//    user.password = password;
    
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    NSString* savedUsername = [defaults objectForKey:@"username"];
    NSString* savedPassword = [defaults objectForKey:@"password"];
    
    if(savedUsername == nil || savedPassword == nil) {
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Info" message:@"User not found" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        
        [alert addAction:action];
        
        [self.navigationController presentViewController:alert animated:YES completion:nil];
        
        return;
    }
    if(password != savedPassword) {
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"Wrong Password" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* action = [UIAlertAction actionWithTitle:@"Try Again" style:UIAlertActionStyleDefault handler:nil];
        
        [alert addAction:action];
        
        [self.navigationController presentViewController:alert animated:YES completion:nil];
        
        return;
    }
    
    
    if(username == savedUsername && password == savedPassword) {
        HomeViewController* homeScreen = [self.storyboard instantiateViewControllerWithIdentifier:@"home_screen"];
        
        [self.navigationController pushViewController:homeScreen animated:YES];
        
    }
    
    
    
    
    
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
