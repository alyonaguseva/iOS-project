//
//  projectViewController.h
//  project
//
//  Created by вАУ–†вАУ—ЧвАУ¬µвАУ—ЩвАУвИЮ вАУ–£вАФ–УвАФ–СвАУ¬µвАУвЙ§вАУвИЮ on 4/4/13.
//  Created by –Р–ї–µ–љ–∞ –У—Г—Б–µ–≤–∞ on 4/4/13.
//  Created by Алена Гусева on 4/4/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalendarView.h"
#import "TableView.h"
@class projectViewController;
@class SecondViewController;
@interface projectViewController : UIViewController  
	@property(nonatomic,retain) CalendarView *calendar;
	@property(nonatomic,retain) UILabel *label;	
@property(nonatomic,retain)  IBOutlet TableView *tablev;
//@property(nonatomic,retain) IBOutlet UIBarButtonItem *item;
- (IBAction)pushSecondView:(id)sender;
@end

