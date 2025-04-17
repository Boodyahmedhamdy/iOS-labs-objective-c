//
//  SyncViewController.m
//  day5-lab1
//
//  Created by JETSMobileLabMini10 on 17/04/2025.
//

#import "SyncViewController.h"
#import "WebKit/WebKit.h"

@interface SyncViewController ()
@property (weak, nonatomic) IBOutlet WKWebView *webview;

@end

@implementation SyncViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString* urlString = @"https://www.facebook.com";
    NSURL* url = [NSURL URLWithString:urlString];
    NSString* html = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    
    [_webview loadHTMLString:html baseURL:url];
    
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
