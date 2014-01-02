//
//  VideoViewController.m
//  ARSC
//
//  Created by Bob Torgerson on 6/30/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "VideoViewController.h"
#import "HomeViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation VideoViewController
@synthesize videoName;

- (IBAction)playMovie {
	NSURL *myURL = nil;
	
	if (self.videoName) {
		myURL = [[NSURL URLWithString:self.videoName] retain];
	}
	else {
		myURL = [[NSURL URLWithString:@"http://people.arsc.edu/~rsimon/podmedia/jessica.mp4"] retain];
	}
	MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL:myURL];
	player.scalingMode = MPMovieScalingModeAspectFill;
	[player play];
	
	MPMoviePlayerViewController *moviePlayer = [[MPMoviePlayerViewController alloc] initWithContentURL:myURL];
	[self presentMoviePlayerViewControllerAnimated:moviePlayer];
	
	[moviePlayer release];
	[player release];
	[myURL release];
}

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
    [super dealloc];
}


@end
