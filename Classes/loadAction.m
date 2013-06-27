//
//  loadAction.m
//  project
//
//  Created by Алена Гусева on 4/4/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "loadAction.h"
#import "projectViewController.h"
#import "CKCalendarView.h"
#import "EventKit/EKEventStore.h"
@implementation loadAction

@synthesize actions=_actions;
@synthesize eventsList=_eventlist;
-(NSArray *) loadActionByDate:(NSDate *)data calendar:(CalendarView *)calendar
{
	
	self.actions = [[EKEventStore alloc] init];
	self.eventsList = [[NSMutableArray alloc] initWithArray:0];
	NSPredicate *predicate;
	NSDate *startDate = data;
	NSDate *endDate = [[NSDate alloc]initWithTimeInterval:86400 sinceDate:data];
	NSArray *calendarArray;// = [NSArray arrayWithObject:defaultCalendar];
	predicate=[self.actions predicateForEventsWithStartDate:startDate endDate:endDate calendars:nil];
	NSArray *events = [self.actions eventsMatchingPredicate:predicate];
	return events;
}


@end
