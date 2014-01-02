//
//  ScienceViewController.h
//  ARSC
//
//  Created by Rijo Simon on 6/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScienceViewController : UIViewController {
	UIWebView *webView;
	UIBarButtonItem *refreshButton;
	UIBarButtonItem *backButton;
	UIBarButtonItem *forwardButton;
	UIBarButtonItem * stopButton;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *refreshButton;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *backButton;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *forwardButton;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *stopButton;
/*
@interface ScienceViewController : UITableViewController {
	IBOutlet UITableView * newsTable;
	
	UIActivityIndicatorView * activityIndicator;
	
	CGSize cellSize;
	
	NSXMLParser * rssParser;
	
	NSMutableArray * stories;
	
	
	// a temporary item; added to the "stories" array one at a time, and cleared for the next one
	NSMutableDictionary * item;
	
	// it parses through the document, from top to bottom...
	// we collect and cache each sub-element value, and then save each item to our array.
	// we use these to track each current item, until it's ready to be added to the "stories" array
	NSString * currentElement;
	NSMutableString * currentTitle, * currentDate, * currentSummary, * currentLink;
	
	/*UITableView* scienceNews;
	UIActivityIndicatorView* activityIndicator;
	
	CGSize cellSize;
	NSXMLParser* sciParser;
	
	NSMutableArray* headlines;
	NSMutableDictionary* item;
	
	NSString* currentElement;
	NSMutableString* currentTitle, *currentDate, *currentSummary, *currentLink;*/
//}

@end
