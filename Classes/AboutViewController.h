//
//  AboutViewController.h
//  ARSC
//
//  Created by Rijo Simon on 6/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AboutViewController : UIViewController {

	IBOutlet UITextView *aboutTextView;
	UIFont *font;
	
}

@property(nonatomic,readonly,retain) UITextView *aboutTextView;
@property(nonatomic,retain) UIFont *font;

@end
