//
//  LibreriaTests.m
//  LibreriaTests
//
//  Created by Marco Velluto on 30/03/13.
//  Copyright (c) 2013 Algos. All rights reserved.
//

#import "LibreriaTests.h"
#import <CoreLocation/CoreLocation.h>

@implementation LibreriaTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    STFail(@"Unit tests are not implemented yet in LibreriaTests");
}

- (void)testSort {
    //NSArray * array = [[NSArray alloc] initWithObjects:1, 23, 444, 5, nil];
    //[self maxInArray:array withI:0 withZ:array.count - 1];
}

- (int)maxInArray:(NSArray *)array withI:(int)i withZ:(int)z {
    
    if (i==z) {
        return i;
    }
    if (z == i+1) {
        if ([array objectAtIndex:i] > [array objectAtIndex:i+1])
            return i;
        else
            return i+1;
    }
    else {
        int m = (i + z) / 2;
        int sx = [self maxInArray:array withI:i withZ:m];
        int dx = [self maxInArray:array withI:m+1 withZ:z];
        
        if (dx > sx)
            return dx;
        
        else
            return sx;
    }
}
@end
