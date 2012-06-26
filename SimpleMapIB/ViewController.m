//
//  ViewController.m
//  SimpleMapIB
//
//  Created by Hassan Abbas on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize mapView;
@synthesize segmentedControlMapType;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    mapView.mapType = MKMapTypeStandard;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)changeMapType:(id)sender {
    switch (segmentedControlMapType.selectedSegmentIndex) {
        case 0:
            mapView.mapType = MKMapTypeStandard;
            break;
            
        case 1:
            mapView.mapType = MKMapTypeSatellite;
            break;
            
        case 2:
            mapView.mapType = MKMapTypeHybrid;
            break;
            
        default:
            mapView.mapType = MKMapTypeStandard;
            break;
    }
}
@end
