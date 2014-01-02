//
//  MyMapAnnotations.h
//  ARSC
//
//  Created by Bob Torgerson on 6/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <MapKit/MapKit.h>


@interface MyMapAnnotations : NSObject <MKAnnotation> {
	NSNumber *longitude;
	NSNumber *latitude;
	NSString *mytitle;
	NSString *subttl;
	NSString *type;
	NSString *text;
	NSString *imageName;
}

@property (nonatomic, retain) NSNumber *longitude;
@property (nonatomic, retain) NSNumber *latitude;
@property (nonatomic, retain) NSString *mytitle;
@property (nonatomic, retain) NSString *subttl;
@property (nonatomic, retain) NSString *type;
@property (nonatomic, retain) NSString *text;
@property (nonatomic, retain) NSString *imageName; 

@end
