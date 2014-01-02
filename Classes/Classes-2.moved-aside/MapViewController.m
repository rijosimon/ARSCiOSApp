//
//  MapViewController.m
//  NavigationController
//
//  Created by Bob Torgerson on 6/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"
#import "MyMapAnnotations.h"
#import "DetailViewController.h"
#import "VideoViewController.h"
#import "XMLParser.h"

@implementation MapViewController

@synthesize mapView, mapAnnotations, detailViewController, videoViewController, currentMapAnnotation;

#pragma mark -

+ (CGFloat)annotationPadding;
{
    return 10.0f;
}
+ (CGFloat)calloutHeight;
{
    return 40.0f;
}

- (void)gotoLocation
{
    // start off by default in Fairbanks
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 64.841458;
	//37.786996;
    newRegion.center.longitude = -147.720151;
	//-122.440100;
    newRegion.span.latitudeDelta = 0.015872;
    newRegion.span.longitudeDelta = 0.009863;
	
    [self.mapView setRegion:newRegion animated:YES];
}

- (void)zoomOut
{
	MKCoordinateRegion wayout;
	wayout.center.latitude = 64.859195;
	wayout.center.longitude = -147.849303;
	wayout.span.latitudeDelta = 90;
	wayout.span.longitudeDelta = 90;
	
	[self.mapView setRegion:wayout animated:YES];
}

- (void)zoomToWestRidge
{
	MKCoordinateRegion fairtown;
	fairtown.center.latitude = 64.859195;
	fairtown.center.longitude = -147.847703;
	fairtown.span.latitudeDelta = 0.002872;
    fairtown.span.longitudeDelta = 0.009863;
	
	[self.mapView setRegion:fairtown animated:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    //hide the navigation bar
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

- (void)viewDidLoad
{
 
    self.mapView.mapType = MKMapTypeHybrid;   // also MKMapTypeSatellite or MKMapTypeHybrid
	self.mapView.showsUserLocation = YES;
	self.mapView.delegate = self;
	self.mapAnnotations = [[NSMutableArray alloc] init];
	[self.navigationController setNavigationBarHidden:YES animated:NO];
   
	data = [[NSData alloc] initWithContentsOfFile:@"/Users/rsimon/Documents/ARSC/App Development - Newby/Workspace/ARSC 3/Places.xml"];
	XMLParser *parser = [[XMLParser alloc] init];
	[parser parseXMLData:data];
	[data release];
	self.mapAnnotations = [parser mpAnnotations];
	[parser release];
	NSLog(@"%@",[[self.mapAnnotations objectAtIndex:1] text]);
	[self.mapView addAnnotations:self.mapAnnotations];
	
    [self zoomToWestRidge];    // go to UAF Campus
}

- (void)showDetails:(id)sender
{
    // the detail view does not want a toolbar so hide it
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    self.detailViewController = [[DetailViewController alloc] init];
	
	[self.detailViewController setDetailText:@"This is a test, only a test!"];
    [self.navigationController pushViewController:self.detailViewController animated:NO];
	[self.detailViewController release];
}

- (void)showVideo:(id)sender
{
	[self.navigationController setNavigationBarHidden:NO animated:NO];
	self.videoViewController = [[VideoViewController alloc] init];
	NSLog(@"%@",[self.currentMapAnnotation text]);
	[self.videoViewController setVideoName:[self.currentMapAnnotation text]];
	[self.navigationController pushViewController:self.videoViewController animated:NO];
}

- (MKAnnotationView *)mapView:(MKMapView *)theMapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[MyMapAnnotations class]])
    {
		NSLog(@"Placing MyMapAnnotations Pin...");
        // try to dequeue an existing pin view first
		//NSString* Identifier = [annotation title];
        MKPinAnnotationView* pinView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"Normal"];
        if (!pinView)
        {
            // if an existing pin view was not available, create one
            MKPinAnnotationView* customPinView = [[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"Normal"] autorelease];
            customPinView.pinColor = MKPinAnnotationColorRed;
            customPinView.animatesDrop = YES;
            customPinView.canShowCallout = YES;
			NSLog(@"%@",[annotation title]);
			
			int total = [[theMapView annotations] count];
			int counter = 0;
			
			while (counter < total) {
				NSLog(@"%d",counter);
				if([[[theMapView annotations] objectAtIndex:counter] mytitle] == [annotation title]) {
					break;
				}
				counter++;
			}
			
			NSLog(@"After count: %d",counter);
			NSLog(@"%@",[[[theMapView annotations] objectAtIndex:counter] type]);
			
			self.currentMapAnnotation = [[theMapView annotations] objectAtIndex:counter];
			if ([[[[theMapView annotations] objectAtIndex:counter] type] isEqualToString:@"movie"]) {
				UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
				[rightButton addTarget:self
                            action:@selector(showVideo:)
					forControlEvents:UIControlEventTouchUpInside];
				customPinView.rightCalloutAccessoryView = rightButton;
			
				return customPinView;
			}
			else {
				UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
				[rightButton addTarget:self
								action:@selector(showDetails:)
					  forControlEvents:UIControlEventTouchUpInside];
				customPinView.rightCalloutAccessoryView = rightButton;
				
				return customPinView;
			}
        }
        else
        {
            pinView.annotation = annotation;
        }
        return pinView;
    }
	return nil;
}

- (void)viewDidUnload
{
    self.mapView = nil;
	self.detailViewController = nil;
	self.videoViewController = nil;
	self.mapAnnotations = nil;
}

- (void)dealloc 
{
    [mapView release];
	[detailViewController release];
	[videoViewController release];
    [mapAnnotations release];
    [super dealloc];
}

@end

