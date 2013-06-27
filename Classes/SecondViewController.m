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
#import "projectAppDelegate.h"
#import "ThirdView.h"
@implementation SecondViewController
@synthesize person;
@synthesize contactButton;
@synthesize text;
@synthesize dateC;
@synthesize currentD;
@synthesize textField;
- (IBAction)pushSave:(id)sender {
    NSString *name=textField.text;
	NSDate *dat=dateC.date;
	EKEventStore *eventStore=[[EKEventStore alloc]init];
	EKEvent *event=[EKEvent eventWithEventStore:eventStore];
	event.allDay=YES;
	event.availability=EKEventAvailabilityNotSupported;
	NSDate *end=[[NSDate alloc]initWithTimeInterval:86400 sinceDate:dat];
	event.endDate=end;
	event.startDate=dat;
	event.title=name;
	[event setCalendar:[eventStore defaultCalendarForNewEvents]];
	[self.navigationController popToRootViewControllerAnimated:YES];
	self.text=nil;	
}

- (IBAction)pushThirdView:(id)sender {
	ThirdView *thirdView=[[ ThirdView alloc]initWithNibName:@"AdressTable" bundle:nil];
	[((projectAppDelegate *)[UIApplication sharedApplication].delegate).navigation pushViewController:thirdView animated:YES];
	[thirdView release];
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
	if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
		UIBarButtonItem *itemSave=[[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:@selector(pushSave:)];
		self.navigationItem.rightBarButtonItem=itemSave; 
		
    }
    return self;
}
- (void)viewDidLoad
{
	((projectAppDelegate *)[UIApplication sharedApplication].delegate).navigation.navigationBar.hidden=NO;
	[self.dateC setDate:self.currentD]; 
	[self.textField setText:self.text];
	[super viewDidLoad];
	
}
-(void) viewWillAppear:(BOOL)animated
{
	if (self.person!=nil)
	{
		[self.contactButton setTitle:self.person forState:nil];
	}
	else {
		[self.contactButton setTitle:@"+ Добавить контакт " forState:nil];
	}

}
@end
