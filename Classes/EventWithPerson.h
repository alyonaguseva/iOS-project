//
//  EventWithPerson.h
//  project
//
//  Created by Алена Гусева on 6/27/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AddressBook/AddressBook.h>
#import <EventKit/EventKit.h>

@interface EventWithPerson : EKEvent {
	ABRecordRef *person;

}
@property (nonatomic) ABRecordRef *person;

@end
