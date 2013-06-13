//
//  projectAppDelegate.h
//  project
//
//  Created by Алена Гусева on 4/4/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import <UIKit/UIKit.h>

@class projectViewController;
@class SecondViewController;
@class AdressTable;
@interface projectAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    projectViewController *viewController;
	SecondViewController *secondView;
	AdressTable *adress;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet projectViewController *viewController;
@property (nonatomic, retain) IBOutlet SecondViewController *secondView;
@property (nonatomic, retain) IBOutlet AdressTable *adress;


@end

