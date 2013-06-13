//
//  loadAction.h
//  project
//
//  Created by Алена Гусева on 4/4/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EventKit/EventKit.h>

@interface loadAction : NSObject 
{
	EKEventStore *actions;
	NSDate *currentDate;
	NSArray *eventsList;
}

@property (nonatomic,retain)EKEventStore *actions;
@property (nonatomic,retain) NSDate *currentDate;
@property (nonatomic,retain) NSArray *eventsList;


@end
