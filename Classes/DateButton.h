//
//  DateButton.h
//  project
//
//  Created by Алена Гусева on 4/18/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateButton : UIButton

@property (nonatomic,retain) NSDate *date;
@property (nonatomic,retain) NSCalendar *calendar;

@end
