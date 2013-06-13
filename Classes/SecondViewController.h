//
//  SecondViewController.h
//
//  Created by Алена Гусева on 5/23/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface SecondViewController : UIViewController {
    IBOutlet UITextField *text;
    IBOutlet UIDatePicker *dateC;
	NSInteger *person;
}
@property(nonatomic) NSInteger *person;

- (IBAction)pushSave:(id)sender;
- (IBAction)pushThirdView:(id)sender;
@end
