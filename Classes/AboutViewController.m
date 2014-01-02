//
//  AboutViewController.m
//  ARSC
//
//  Created by Rijo Simon on 6/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AboutViewController.h"


@implementation AboutViewController

@synthesize aboutTextView, font;

- (void)viewDidLoad
{
	[super viewDidLoad];
    self.title = @"About ARSC";
	font = [[UIFont alloc] init];
	//font.fontName = @"Tahome";
	//[font boldSystemFontOfSize:18];
	aboutTextView.font = [UIFont fontWithName:@"Tahome" size:18];
    aboutTextView.text = @"About Us\n\nThe Arctic Region Supercomputing Center serves the computational and other needs of the University of Alaska and the Department of Defense as a DoD Supercomputing Resource Center (DSRC) within the DoD\'s High Performance Computing Modernization Program (HPCMP). The center has been serving the computational needs of the academic and DoD community since 1993. ARSC computational systems and resources include a wide range of high performance computing, storage and visualization technology. ARSC is poised to meet northern challenges with global solutions.\n\nMission\n\nThe mission of the Arctic Region Supercomputing Center is to provide an ensemble of outstanding expertise, state-of-the-art technology and innovative research projects that will:\n\n• Enable the creation and discovery of knowledge in science, engineering and art.\n• Enhance educational and research capabilities of the University of Alaska Fairbanks, Alaska and the United States.\n• Advance knowledge of the polar regions.\n• Contribute to a richer understanding of the world around us.\n\nPeople\n\nSpecialists at ARSC provide expertise in massively parallel supercomputing, parallel vector supercomputing, code optimization, storage, networking and visualization. ARSC’s relationship with the University of Alaska facilitates collaborative research opportunities for academic and government scientists. These areas of research include ice, ocean and atmospheric coupled modeling; regional climate modeling; global climate change; permafrost, hydrology and arctic engineering; magnetospheric, ionospheric and upper atmospheric physics; volcanology and geology; petroleum and mineral engineering; genomics and proteomics; and arctic biology. ARSC actively participates in a joint-faculty program supporting University of Alaska Fairbanks (UAF) researchers in several departments across campus. ARSC staff provide on-site training and support UAF classes throughout the year.";
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
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
