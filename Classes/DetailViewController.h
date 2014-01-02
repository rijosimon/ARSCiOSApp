//
//  DetailViewController.h
//  ARSC
//
//  Created by Bob Torgerson on 6/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {
	IBOutlet UITextView *modText;
	NSString *theText;
	IBOutlet UIImageView *picture;
	CGFloat picHeight;
	CGFloat picWidth;
}

@property (nonatomic, retain, readonly) UITextView *modText;
@property (nonatomic, retain) NSString *theText;
@property (nonatomic, retain) UIImageView *picture;

- (void)setDetailText:(NSString *)txt;
- (void)setImage:(NSString *)imgName setHeight:(CGFloat)frmHeight setWidth:(CGFloat)frmWidth;

@end