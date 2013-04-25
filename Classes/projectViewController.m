//
//  projectViewController.m
//  project
//
//  Created by Алена Гусева on 4/4/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import "projectViewController.h"
#import "loadAction.h"


@implementation projectViewController

@synthesize calendar=_calendar;
@synthesize label=_label;


// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    	
	if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
		
	
    }
    return self;
}


// Implement loadView to create a view hierarchy programmatically, without using a nib.
/*- (void)loadView 
{
	
	
	
}*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	loadAction *la=[[loadAction alloc]init];
	CalendarView *calendar=[[CalendarView alloc] init];
	UILabel *label=[[UILabel alloc]init];
	self.calendar=calendar;
	calendar.delegate=la;
	calendar.frame=CGRectMake(10, 0, 300, 350);
	[self.view addSubview:calendar];
	label.frame=CGRectMake(10,310, 300,100);
	label.backgroundColor=[UIColor blueColor];

	self.label=label;
	//[self.view addSubview:label];
	[super viewDidLoad];
	
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
