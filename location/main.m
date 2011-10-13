//
//  main.m
//  location
//
//  Created by Britt Crawford on 10/13/11.
//  Copyright 2011 Britt Crawford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    if([CLLocationManager locationServicesEnabled]) {
        CLLocationManager * geo = [[CLLocationManager alloc] init];
        CLLocation *location = geo.location;
        NSLog([NSString localizedStringWithFormat:@"%f,%f", location.coordinate.latitude, location.coordinate.longitude]);
    } else {
        NSLog(@"Location services are not enabled. You must enabled them to use location.");
    }

    [pool drain];
    return 0;
}

