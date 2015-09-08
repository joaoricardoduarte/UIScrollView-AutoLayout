//
//  testTests.m
//  testTests
//
//  Created by Joao Duarte on 24/07/2014.
//  Copyright (c) 2014 Joao Duarte. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface testTests : XCTestCase

@end

@implementation testTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
  
    NSSet *mySet = [[NSSet alloc] init];
    NSSet *setTwo = [[NSSet alloc] initWithArray:@[ @"1", @"2", @"3" ]];
    
    XCTAssertTrue( [mySet count] == 0, @"Set should be empty" );
    XCTAssertTrue( [setTwo count] == 3, @"We should have three items" );
}

@end
