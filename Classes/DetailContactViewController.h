//
//  DetailViewController.h
//  ARSC_bobs
//
//  Created by Rijo Simon on 7/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailContactViewController : UIViewController {

	IBOutlet UIImageView *personImage;
	IBOutlet UITextView *textIntroPeople;
	IBOutlet UITextView *textTitlePeople;
	IBOutlet UITextView *textDetailPeople;
	NSMutableArray *dataReceived;
}

@property (nonatomic, retain) IBOutlet UIImageView *personImage;
@property (nonatomic, retain) IBOutlet UITextView *textIntroPeople;
@property (nonatomic, retain) IBOutlet UITextView *textTitlePeople;
@property (nonatomic, retain) IBOutlet UITextView *textDetailPeople;
@property (nonatomic, retain) NSMutableArray *dataReceived;

@end
