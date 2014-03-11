//
//  WipRemindersTests.m
//  WipRemindersTests
//
//  Created by Diego Freniche Brito on 26/02/14.
//  Copyright (c) 2014 freniche. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Task.h"

@interface WipRemindersTests : XCTestCase

@end

@implementation WipRemindersTests

- (void)testCanCreateATask {
    [MagicalRecord setupCoreDataStackWithInMemoryStore];
    
    NSManagedObjectContext *context = [NSManagedObjectContext MR_context];
    
    Task *t1 = [[Task alloc] initWithEntity:[NSEntityDescription entityForName:@"Task" inManagedObjectContext:context] insertIntoManagedObjectContext:context];
    
    Task *t2 = [NSEntityDescription insertNewObjectForEntityForName:@"Task" inManagedObjectContext:context];
    
    Task *t3 = [Task MR_createEntity];
    
    XCTAssertNotNil(t1, @"OMG!");
    XCTAssertNotNil(t2, @"OMG!");
    XCTAssertNotNil(t3, @"OMG!");
    
    
}

- (void)testCanDeleteAllTasks {
    [MagicalRecord setupCoreDataStackWithInMemoryStore];
    
    NSManagedObjectContext *context = [NSManagedObjectContext MR_context];
    XCTAssertNotNil(context, @"OMG");
    
    [Task MR_truncateAll];
    
    NSArray *allTask = [Task MR_findAll];
    
    XCTAssertNotNil(allTask, @"");
    XCTAssertEqual([allTask count], (NSUInteger)0, @"Count must 0 but is %d", [allTask count]);
}


@end
