//
//  LibLocation.h
//  Libreria
//
//  Created by Marco Velluto on 06/04/13.
//  Copyright (c) 2013 Algos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>

@interface LibLocation : NSObject

+ (CLLocation *)location;
+ (CLLocationCoordinate2D)coordinateFromLocation:(CLLocation *)location;
+ (CLLocationCoordinate2D)coordinate;

@end
