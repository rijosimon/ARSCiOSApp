//
//  SupportViewController.m
//  ARSC
//
//  Created by Rijo Simon on 6/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SupportViewController.h"


@implementation SupportViewController

//@synthesize webView;

- (void)viewDidLoad {
	[super viewDidLoad];

	self.title = @"ARSC Support Page";
	NSString *urlAddress = @"http://www.arsc.edu/support/support.html";
	
	NSURL *url = [NSURL URLWithString:urlAddress];
	
	NSURLRequest *requestObject = [NSURLRequest requestWithURL:url];
	
	[webView loadRequest:requestObject];
	webView.scalesPageToFit = YES;
}
// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return YES;
}


- (void) viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void) viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
	[self viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
