    //
//  HomeViewController.m
//  ARSC
//
//  Created by Rijo Simon on 6/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HomeViewController.h"
#import "AboutViewController.h"
#import "ScienceViewController.h"
#import "SupportViewController.h"
#import "MapViewController.h"
#import "ARSCAppDelegate.h"
#import "MyMapAnnotations.h"

@implementation HomeViewController

@synthesize aboutViewController;
@synthesize scienceViewController;
@synthesize supportViewController;
@synthesize mapViewController;
//@synthesize currentMapAnnotation;

- (void)viewDidLoad
{
	UIImage *image = [UIImage imageNamed:@"ARSC_Logo.jpg"];
	
	[[imageView self ] setImage:image];	  
}

- (IBAction)pushAboutView:(id)sender
{
	NSLog(@"Getting to here!!");
	//AboutViewController *secondViewController = [[AboutViewController alloc] init];
	//secondViewController.title = @"ARSC About";
	aboutViewController = [[AboutViewController alloc] init];
	[[self navigationController] pushViewController:aboutViewController animated:YES];
	[aboutViewController release];
	
}
- (IBAction)pushScienceView:(id)sender
{
	//ScienceViewController *secondViewController = [[ScienceViewController alloc] init];
	//secondViewController.title = @"ARSC Science";
	scienceViewController = [[ScienceViewController alloc] init];
	[[self navigationController] pushViewController:scienceViewController animated:YES];
	[scienceViewController release];
	
}

- (IBAction)pushSupportView:(id)sender
{
	//SupportViewController *secondViewController = [[SupportViewController alloc] init];
	//secondViewController.title = @"ARSC Support";
	supportViewController = [[SupportViewController alloc] init];
	[[self navigationController] pushViewController:supportViewController animated:YES];
	[supportViewController release];
}

- (IBAction)pushMapView:(id)sender;
{
	mapViewController = [[MapViewController alloc] init];
	[[self navigationController] pushViewController:mapViewController animated:YES];
	[mapViewController release];
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
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
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
	[imageView release];
    [super dealloc];
}


@end
