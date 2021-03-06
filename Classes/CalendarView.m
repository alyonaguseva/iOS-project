//
//  CalendarView.m
//  tableview
//
//  Created by Алена Гусева on 4/4/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "CalendarView.h"
#import "DateButton.h"
#import "projectAppDelegate.h"
#import "projectViewController.h"
@implementation CalendarView
@synthesize delegate=_delegate;
- (void)dateButtonPressed:(id)sender {
	DateButton *dateButton = sender;
    NSDate *date = dateButton.date;
    SEL selector = @selector(loadActionByDate:);
	
	if (self.delegate&&[self.delegate respondsToSelector:selector])
	{
		[self.delegate performSelector:selector withObject:date] ;
	}
	[((projectAppDelegate *)[UIApplication sharedApplication].delegate).viewController.tablev viewDidLoad];
	[super dateButtonPressed:sender];
}

	@end
