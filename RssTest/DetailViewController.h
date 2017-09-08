//
//  DetailViewController.h
//  RssTest
//
//  Created by supermacho on 08.09.17.
//  Copyright © 2017 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) NSString *url;

@property (weak, nonatomic) IBOutlet UIWebView *webView;


@end
