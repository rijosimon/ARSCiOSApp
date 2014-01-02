//
//  VideoViewController.h
//  ARSC
//
//  Created by Bob Torgerson on 6/30/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface VideoViewController : UIViewController {
	NSString *videoName;
}

@property (nonatomic, retain) NSString *videoName;

- (IBAction) playMovie;

@end
