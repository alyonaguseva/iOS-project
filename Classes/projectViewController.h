//
//  projectViewController.h
//  project
//
//  Created by –≤–Р–£вАУвА†–≤–Р–£вАФ–І–≤–Р–£¬ђ¬µ–≤–Р–£вАФ–©–≤–Р–£–≤–Ш–Ѓ –≤–Р–£вАУ¬£–≤–Р–§вАУ–£–≤–Р–§вАУ–°–≤–Р–£¬ђ¬µ–≤–Р–£–≤–Щ¬І–≤–Р–£–≤–Ш–Ѓ on 4/4/13.
//  Created by вАУ–†вАУ—ЧвАУ¬µвАУ—ЩвАУвИЮ вАУ–£вАФ–УвАФ–СвАУ¬µвАУвЙ§вАУвИЮ on 4/4/13.
//  Created by –Р–ї–µ–љ–∞ –У—Г—Б–µ–≤–∞ on 4/4/13.
//  Created by Алена Гусева on 4/4/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalendarView.h"
#import "TableView.h"
#import "Button.h"
@class projectViewController;
@class SecondViewController;
@interface projectViewController : UIViewController  
	@property(nonatomic,retain) CalendarView *calendar;
	@property(nonatomic,retain) UILabel *label;	
@property(nonatomic,retain)  IBOutlet TableView *tablev;
@property (nonatomic,retain)IBOutlet Button *itemAdd;
- (IBAction)pushSecondView:(id)sender;
@end

