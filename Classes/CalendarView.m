//
//  CalendarView.m
//  tableview
//
//  Created by Алена Гусева on 4/4/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "CalendarView.h"


@implementation CalendarView

- (void)dateButtonPressed:(id)sender {
	
	SEL selector = @selector(loadActionByDate:calendar:);
	if (self.delegate&&[self.delegate respondsToSelector:selector])
	{
		[self.delegate performSelector:selector];
	}
	[super dateButtonPressed:sender];
}
	@end
