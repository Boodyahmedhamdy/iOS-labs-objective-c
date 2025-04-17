//
//  ASyncViewController.m
//  day5-lab1
//
//  Created by JETSMobileLabMini10 on 17/04/2025.
//

#import "ASyncViewController.h"
#import "WebKit/WebKit.h"

@interface ASyncViewController ()
@property (weak, nonatomic) IBOutlet WKWebView *webkit;

@property NSMutableData* data;

@end

@implementation ASyncViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _data = [NSMutableData new];
    // Do any additional setup after loading the view.
    
    NSString* urlString = @"https://www.facebook.com";
    NSURL* url = [NSURL URLWithString:urlString];
    
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    
    NSURLConnection* connection = [NSURLConnection connectionWithRequest:request delegate:self];
    
    [connection start];
    
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSLog(@"recieved data chunk");
    [self.data appendData:data];
    
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"finished loading");
//    NSLog(@"%@", connection.originalRequest);
    
    [_webkit loadRequest: connection.currentRequest];
//    [_webkit loadRequest:connection.originalRequest];
    
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
