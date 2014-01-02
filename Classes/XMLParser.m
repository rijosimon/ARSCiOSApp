//
//  XMLParser.m
//  ARSC
//
//  Created by Bob Torgerson on 7/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "XMLParser.h"
#import "MyMapAnnotations.h"

@implementation XMLParser

//@synthesize locationList;
@synthesize mpAnnotations;
@synthesize theMapAnnotation;
@synthesize currentProperty;
@synthesize currentValue;

- (void)parseXMLData:(NSData *)data {
	NSXMLParser *parser = [[NSXMLParser alloc] initWithData:data];
	
	[parser setDelegate:self];
    [parser setShouldProcessNamespaces:NO];
    [parser setShouldReportNamespacePrefixes:NO];
    [parser setShouldResolveExternalEntities:NO];
	
	self.theMapAnnotation = nil;
	self.mpAnnotations = [[NSMutableArray alloc] init];
	
	NSLog(@"Just before parsing...");
    
    [parser parse];
	
	NSLog(@"Ending parse...");
    
	[parser release];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    if (qName) {
        elementName = qName;
    }
    
	NSLog(@"Starting element...");
	
	if ([elementName isEqualToString:@"point"]) {
		//NSLog(@"Whoa! Point!");
		self.theMapAnnotation = [[MyMapAnnotations alloc] init];
	}
	
	if ([elementName isEqualToString:@"name"] || [elementName isEqualToString:@"subtitle"] || [elementName isEqualToString:@"text"] || [elementName isEqualToString:@"type"]) {
		//NSLog(@"%@",elementName);
		self.currentProperty = [[NSMutableString alloc] init];
	}
	
	if ([elementName isEqualToString:@"latitude"] || [elementName isEqualToString:@"longitude"] || [elementName isEqualToString:@"image"] || [elementName isEqualToString:@"imgWidth"] || [elementName isEqualToString:@"imgHeight"]) {
		self.currentProperty = [[NSMutableString alloc] init];
		//currentValue = [[NSNumber alloc] init];
	}
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
	NSLog(@"End Element..");
	if ([elementName isEqualToString:@"latitude"]) {
		self.currentValue = [[NSNumber alloc] initWithDouble:[self.currentProperty doubleValue]];
		[self.theMapAnnotation setLatitude:self.currentValue];
		[self.currentValue release];
	} else if ([elementName isEqualToString:@"longitude"]) {
		self.currentValue = [[NSNumber alloc] initWithDouble:[self.currentProperty doubleValue]];
		[self.theMapAnnotation setLongitude:self.currentValue];
		[self.currentValue release];
	} else if ([elementName isEqualToString:@"subtitle"]) {
		[self.theMapAnnotation setSubttl:self.currentProperty];
	} else if ([elementName isEqualToString:@"name"]) {
		[self.theMapAnnotation setMytitle:self.currentProperty];
	} else if ([elementName isEqualToString:@"type"]) {
		[self.theMapAnnotation setType:self.currentProperty];
	} else if ([elementName isEqualToString:@"text"]) {
		[self.theMapAnnotation setText:self.currentProperty];
	} else if ([elementName isEqualToString:@"image"]) {
		[self.theMapAnnotation setImageName:self.currentProperty];
	} else if ([elementName isEqualToString:@"point"]) {
		NSLog(@"Add new annotation!");
		NSLog(@"\n%@\n%@\n%@",[self.theMapAnnotation mytitle],[self.theMapAnnotation latitude],[self.theMapAnnotation longitude]);
		[self.mpAnnotations addObject:self.theMapAnnotation];
		[self.theMapAnnotation release];
	}
	/*
} else if ([elementName isEqualToString:@"imgWidth"]) {
	CGFloat value = [self.currentProperty floatValue];
	[self.theMapAnnotation setImageWidth:value];
} else if ([elementName isEqualToString:@"imgHeight"]) {
	CGFloat value = [self.currentProperty floatValue];
	[self.theMapAnnotation setImageHeight:value];
	*/
	//self.currentValue = nil;
	self.currentProperty = nil;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if (self.currentProperty && string && [string length] > 0) {
        [currentProperty appendString:string];
    }
}

- (void)dealloc {
	[currentValue release];
	[currentProperty release];
	[theMapAnnotation release];
	[mpAnnotations release];
	[super dealloc];
}

@end
