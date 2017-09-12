//
//  DetailViewController.m
//  RssTest
//
//  Created by supermacho on 08.09.17.
//  Copyright © 2017 student. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize webView;
@synthesize actIndicator;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

#pragma mark - Managing the detail item

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
//    spinner.center = CGPointMake(160, 240);
//    spinner.tag = 12;
//    [self.view addSubview:spinner];
//    [spinner startAnimating];
    //[spinner release];
    NSURL *myURL = [NSURL URLWithString:
                    [self.url stringByAddingPercentEncodingWithAllowedCharacters:
                     [NSCharacterSet URLFragmentAllowedCharacterSet]]];
    NSURLRequest *request = [NSURLRequest requestWithURL:myURL];
    
    [self.webView loadRequest:request];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    
}


- (void)webViewDidStartLoad:(UIWebView *)webView {
    [actIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"Finishes");
    //[[self.view viewWithTag:12] stopAnimating];
    [actIndicator stopAnimating];
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    
    //[self removeLoadingView];
    NSLog(@"Error for WEBVIEW: %@", [error description]);
}

@end
