//
//  HomeViewController.h
//  ARSC
//
//  Created by Rijo Simon on 6/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AboutViewController;
@class ScienceViewController;
@class SupportViewController;
@class MapViewController;
//@class MyMapAnnotations;

@interface HomeViewController : UIViewController {

	
	IBOutlet UIImageView *imageView;
	
	IBOutlet AboutViewController *aboutViewController;
	IBOutlet ScienceViewController *scienceViewController;
	IBOutlet SupportViewController *supportViewController;
	IBOutlet MapViewController *mapViewController;
	
	//MyMapAnnotations *currentMapAnnotation;
	/*IBOutlet UIButton *aboutButton;
	
	IBOutlet UIButton *scienceButton;
	
	IBOutlet UIButton *supportButton;
	 */
}

@property(nonatomic, retain) AboutViewController *aboutViewController;
@property(nonatomic, retain) ScienceViewController *scienceViewController;
@property(nonatomic, retain) SupportViewController *supportViewController; 
@property(nonatomic, retain) MapViewController *mapViewController;
//@property(nonatomic, retain) MyMapAnnotations *currentMapAnnotation;

- (IBAction)pushAboutView:(id) sender;
- (IBAction)pushScienceView:(id) sender;
- (IBAction)pushSupportView: (id)sender;
- (IBAction)pushMapView: (id)sender;

@end
