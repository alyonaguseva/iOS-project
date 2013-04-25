//
//  DateButton.m
//  project
//
//  Created by Алена Гусева on 4/18/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "DateButton.h"

@implementation DateButton

@synthesize date = _date;
@synthesize calendar = _calendar;

- (void)setDate:(NSDate *)date {
	if (_date==date) return;
	[_date release];
	_date=[date retain];
    NSDateComponents *comps = [self.calendar components:NSDayCalendarUnit|NSMonthCalendarUnit fromDate:date];
    [self setTitle:[NSString stringWithFormat:@"%d", comps.day] forState:UIControlStateNormal];
}

@end
