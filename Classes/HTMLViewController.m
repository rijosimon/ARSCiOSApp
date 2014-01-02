//
//  HTMLViewController.m
//  ARSC
//
//  Created by Bob Torgerson on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HTMLViewController.h"


@implementation HTMLViewController

@synthesize webView, urlAddress;

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//self.title = @"ARSC Support Page";
	//NSString *urlAddress = @"http://www.arsc.edu/support/support.html";
	
	NSURL *url = [NSURL URLWithString:urlAddress];
	
	NSURLRequest *requestObject = [NSURLRequest requestWithURL:url];
	
	[webView loadRequest:requestObject];
	webView.scalesPageToFit = YES;
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return YES;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[webView release];
	[urlAddress release];
    [super dealloc];
}


@end
