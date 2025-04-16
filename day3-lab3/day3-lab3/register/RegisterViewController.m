//
//  RegisterViewController.m
//  day3-lab3
//
//  Created by JETSMobileLabMini10 on 16/04/2025.
//

#import "RegisterViewController.h"
#import "../data/User.h"
#import "../home/HomeViewController.h"


@interface RegisterViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tfUsername;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;
@property (weak, nonatomic) IBOutlet UITextField *tfConfirmPassword;

@end

/**
 - take input from user

 - validate. password must be the same as confirm password
 - username must not be empty
 
 - create user from data
 - store the user
 
 */

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)registerUser:(id)sender {
    NSString* username = _tfUsername.text;
    NSString* password = _tfPassword.text;
    NSString* confirmPassword = _tfConfirmPassword.text;
    
    // empty fields
    if(username.length == 0 || password.length == 0 || confirmPassword.length == 0) {
        
        UIAlertController* usernameAlert = [UIAlertController alertControllerWithTitle:@"Error" message:@"all Fields must not be empty" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"clicked ok");
        }];
        
        [usernameAlert addAction:action];
        [self presentViewController:usernameAlert animated:YES completion:nil];
        
        return;
    }
    
    // password isn't the same
    if(password != confirmPassword) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"Password and Confirm Password arn't the Same" preferredStyle: UIAlertControllerStyleAlert];
        
        UIAlertAction* action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"clicked ok");
        }];
        
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
    }
    
    
    User* user = [User new];
    user.username = username;
    user.password = password;
    
    
    // save data
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:user.username forKey:@"username"];
    [userDefaults setObject:user.password forKey:@"password"];
    
    // go to home screen
    HomeViewController* homeScreen = [self.storyboard instantiateViewControllerWithIdentifier:@"home_screen"];
//    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController pushViewController:homeScreen animated:YES];
    
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
