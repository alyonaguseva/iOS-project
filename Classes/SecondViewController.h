//
//  SecondViewController.h
//
//  Created by Алена Гусева on 5/23/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface SecondViewController : UIViewController {
    IBOutlet UITextField *textField;
    IBOutlet UIDatePicker *dateC;
	NSString *person;
}
@property(nonatomic,retain) NSString *person;
@property(nonatomic,retain) IBOutlet UITextField *textField;
@property(nonatomic,retain) IBOutlet UIDatePicker *dateC;
@property (nonatomic,retain) IBOutlet UIButton *contactButton;
@property (nonatomic,retain) NSDate *currentD;
@property (nonatomic,retain) NSString *text;

- (IBAction)pushSave:(id)sender;
- (IBAction)pushThirdView:(id)sender;
@end
