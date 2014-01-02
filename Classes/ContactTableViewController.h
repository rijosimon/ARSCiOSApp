//
//  ContactTableViewController.h
//  ARSC_bobs
//
//  Created by Rijo Simon on 6/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactTableViewController : UITableViewController {

	NSArray *staffDetails;
	NSArray *staffTitle;
	NSArray *staffEmail;
//	NSArray *staffPhone;
}

@property (nonatomic, retain) NSArray *staffDetails;
@property (nonatomic, retain) NSArray *staffTitle;
@property (nonatomic, retain) NSArray *staffEmail;
//@property (nonatomic, retain) NSArray *staffPhone;

@end
