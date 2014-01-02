//
//  XMLParser.h
//  ARSC
//
//  Created by Bob Torgerson on 7/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MyMapAnnotations;

@interface XMLParser : NSObject <NSXMLParserDelegate> {
	//NSMutableArray *locationList;
	NSMutableArray *mpAnnotations;
	MyMapAnnotations *theMapAnnotation;
	NSMutableString *currentProperty;
	NSNumber *currentValue;
}
	
//@property (retain) NSMutableArray *locationList;
@property (nonatomic, retain) NSMutableArray *mpAnnotations;
@property (nonatomic, retain) MyMapAnnotations *theMapAnnotation;
@property (nonatomic, retain) NSMutableString *currentProperty;
@property (nonatomic, retain) NSNumber *currentValue;	

- (void)parseXMLData:(NSData *)data;

@end
