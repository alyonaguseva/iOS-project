//
//  loadAction.m
//  project
//
//  Created by Алена Гусева on 4/4/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "loadAction.h"
#import "projectViewController.h"
#import "EventKit/EKEventStore.h"
@implementation loadAction

@synthesize actions=_actions;
-(NSArray *) loadActionByDate:(NSDate *)data calendar:(CalendarView *)calendar
{
	
	self.actions = [[EKEventStore alloc] init];
	self.eventsList = [[NSMutableArray alloc] initWithArray:0];
	NSPredicate *predicate;
	NSDate *startDate = data;
	NSDate *endDate = data+86400;
	NSArray *calendarArray = [NSArray arrayWithObject:calendar];
	predicate=[self.actions predicateForEventsWithStartDate:startDate endDate:endDate calendars:calendarArray];
	NSArray *events;// = [self.actions eventsMatchingPredicate:predicate];
	return events;
}

@end
