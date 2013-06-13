//
//  projectViewController.m
//  project
//
//  Created by вАУ–†вАУ—ЧвАУ¬µвАУ—ЩвАУвИЮ вАУ–£вАФ–УвАФ–СвАУ¬µвАУвЙ§вАУвИЮ on 4/4/13.
//  Created by –Р–ї–µ–љ–∞ –У—Г—Б–µ–≤–∞ on 4/4/13.
//  Created by Алена Гусева on 4/4/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import "projectViewController.h"
#import "loadAction.h"
#import "SecondViewController.h"

@implementation projectViewController

@synthesize calendar=_calendar;
@synthesize label=_label;
@synthesize tablev;
- (IBAction)pushSecondView:(id)sender 
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"secondView" bundle:nil];
	self.title=@"Back";
	
	[self.navigationController pushViewController:secondView animated:YES];
	/*UIBarButtonItem *itemSave=[[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:secondView action:@selector(pushSave:)];
	secondView.navigationItem.rightBarButtonItem=itemSave;*/
	[secondView retain];
}
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    	
	if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        
	
    }
    return self;
}


// Implement loadView to create a view hierarchy programmatically, without using a nib.
/*- (void)loadView 
{
	
	
	
}*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	self.title=@"Events";
	loadAction *la=[[loadAction alloc]init];
	la.currentDate=[[NSDate alloc]init];
	CalendarView *calendar=[[CalendarView alloc] init];
	UILabel *label=[[UILabel alloc]init];
	self.calendar=calendar;
	calendar.delegate=la;
		calendar.frame=CGRectMake(10, 0, 300, 350);
	[self.view addSubview:calendar];
	NSDate *date=[[NSDate alloc]init];
	[la loadActionByDate:date];
	/*if (la.eventsList==NULL)
	 
	 { 
		label.frame=CGRectMake(0,275, 320,190);
		label.backgroundColor=[UIColor grayColor];
		 NSString *str=[[NSString alloc]initWithString:@"No events for today" ];
		 label.text=str;
		 label.numberOfLines=1;
		 label.adjustsFontSizeToFitWidth=TRUE;
		
		self.label=label;
		[self.view addSubview:label];
	 }*/
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
