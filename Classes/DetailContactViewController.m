//
//  DetailViewController.m
//  ARSC_bobs
//
//  Created by Rijo Simon on 7/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DetailContactViewController.h"
#import <UIKit/UIFont.h>

@implementation DetailContactViewController

@synthesize personImage;
@synthesize textIntroPeople;
@synthesize textTitlePeople;
@synthesize textDetailPeople;
@synthesize dataReceived;

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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	NSString *pathName = [[NSString alloc] initWithString:[[dataReceived self] objectAtIndex:0]];
	NSLog(@"%@", pathName);
	UIImage *profileImageAlloc = [UIImage imageNamed:pathName];
	personImage.image = profileImageAlloc;
	textIntroPeople.font = [UIFont fontWithName:@"Helvetica-Bold" size:18];
	textIntroPeople.text = [[dataReceived self] objectAtIndex:1];
	textTitlePeople.text = [[dataReceived self] objectAtIndex:2];
	textDetailPeople.text = [[dataReceived self] objectAtIndex:3];
	[pathName release];
	//[profileImageAlloc release];
	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
	
	NSLog(@"Inside View Did Unload");
}


- (void)dealloc {
    [super dealloc];
	[self.dataReceived release];
	NSLog(@"Inside Detail View dealloc");
}


@end
