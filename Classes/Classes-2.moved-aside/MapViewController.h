//
//  MapViewController.h
//  NavigationController
//
//  Created by Bob Torgerson on 6/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@class DetailViewController;
@class VideoViewController;
@class MyMapAnnotations;

@interface MapViewController : UIViewController <MKMapViewDelegate>
{
    IBOutlet MKMapView *mapView;
	NSMutableArray *mapAnnotations;
	IBOutlet DetailViewController *detailViewController;
	IBOutlet VideoViewController *videoViewController;
	NSData *data;
	MyMapAnnotations *currentMapAnnotation;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, retain) NSMutableArray *mapAnnotations;
@property (nonatomic, retain) IBOutlet DetailViewController *detailViewController;
@property (nonatomic, retain) IBOutlet VideoViewController *videoViewController;
@property (nonatomic, retain) MyMapAnnotations *currentMapAnnotation;

@end