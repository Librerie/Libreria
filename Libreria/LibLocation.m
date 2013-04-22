//
//  LibLocation.m
//  Libreria
//
//  Created by Marco Velluto on 06/04/13.
//  Copyright (c) 2013 Algos. All rights reserved.
//

#import "LibLocation.h"

@implementation LibLocation

+ (CLLocation *)location {
    
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    
    if ([CLLocationManager locationServicesEnabled]) {
        
        //Questo metodo chiede all'utente se l'app può essere localizzata.
        [locationManager startUpdatingLocation];
        locationManager.delegate = locationManager.delegate;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        locationManager.distanceFilter = kCLDistanceFilterNone;
    }
    else {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Attenzione"
                                                        message:@"Abilitare i servizi di localizzazione nelle impostazioni"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    }
    CLLocation *location = [locationManager location];
    
    return location;

}

+ (CLLocationCoordinate2D)coordinate {
    
    return [[LibLocation location] coordinate];
}

+ (CLLocationCoordinate2D)coordinateFromLocation:(CLLocation *)location {
    
    return [location coordinate];
}
@end
