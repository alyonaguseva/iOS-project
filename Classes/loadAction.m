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
@synthesize eventsList;
- (void) loadActionByDate:(NSDate *)data
{
	
	self.actions = [[EKEventStore alloc] init];
	if (data==nil) data=[[NSDate alloc] init];
	self.currentDate=data;
	NSPredicate *predicate;
	NSDate *startDate = data;
	NSDate *endDate = [[NSDate alloc]initWithTimeInterval:86400 sinceDate:data];
	predicate=[self.actions predicateForEventsWithStartDate:startDate endDate:endDate calendars:nil];
	NSArray *tmp=[self.actions eventsMatchingPredicate:predicate];
	self.eventsList =tmp;

}
-(void)setCurrentDate:(NSDate *) d
{
	currentDate=d;
}
-(NSArray *) loadTable
{
	[self loadActionByDate:currentDate];
	return self.eventsList;
}


@end
