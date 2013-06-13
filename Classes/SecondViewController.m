//
//  SecondViewController.m
//
//  Created by Алена Гусева on 5/23/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//
#import "EventKit/EKEventStore.h"
#import "EventKit/EKEvent.h"
#import "EventKit/EventKit.h"
#import "SecondViewController.h"
#import "projectViewController.h"
@implementation SecondViewController
@synthesize person;
- (IBAction)pushSave:(id)sender {
    NSString *name=text.text;
	NSDate *dat=dateC.date;
	EKEventStore *eventStore=[[EKEventStore alloc]init];
	EKEvent *event=[EKEvent eventWithEventStore:eventStore];
	//[event eventWithEventStore:eventStore];
	event.allDay=YES;
	event.availability=EKEventAvailabilityNotSupported;
	NSDate *end=[[NSDate alloc]initWithTimeInterval:86400 sinceDate:dat];
	event.endDate=end;
	event.startDate=dat;
	event.title=name;
	 [event setCalendar:[eventStore defaultCalendarForNewEvents]];
	BOOL yji=[eventStore saveEvent:event span:EKSpanThisEvent error:nil];
	[self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)pushThirdView:(id)sender {
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
	if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
		UIBarButtonItem *itemSave=[[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:@selector(pushSave:)];
		self.navigationItem.rightBarButtonItem=itemSave; 
		
    }
    return self;
}

@end
