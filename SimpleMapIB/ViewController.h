//
//  ViewController.h
//  SimpleMapIB
//
//  Created by Hassan Abbas on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import <MapKit/MKReverseGeoCoder.h>

@interface ViewController : UIViewController {
    IBOutlet MKMapView *mapView;
    IBOutlet UISegmentedControl *segmentedControlMapType;
}

@property(nonatomic, retain) IBOutlet MKMapView *mapView;
@property(nonatomic, retain) IBOutlet UISegmentedControl *segmentedControlMapType;

- (IBAction)changeMapType:(id)sender;

@end
