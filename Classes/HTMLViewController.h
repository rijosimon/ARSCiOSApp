//
//  HTMLViewController.h
//  ARSC
//
//  Created by Bob Torgerson on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HTMLViewController : UIViewController {
	IBOutlet UIWebView *webView;
	NSString *urlAddress;
}

@property (nonatomic, retain) UIWebView *webView;
@property (nonatomic, retain) NSString *urlAddress;

@end
