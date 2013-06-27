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

@property (nonatomic,retain)EKEventStore *actions;
@property (nonatomic,retain)NSMutableArray *eventsList;
-(NSArray *) loadActionByDate:(NSDate *)data calendar:calendar;

@end
