//
//  PostsViewController.h
//  FFS
//
//  Created by vinh ha on 5/29/15.
//  Copyright (c) 2015 Vinh Ha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <Parse/Parse.h>

@interface PostsViewController : UIViewController <UINavigationControllerDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLLocation *currentLocation;
@property (strong, nonatomic) PFGeoPoint *myLocation;
+(CLLocation*)location;


@property (strong, nonatomic) NSArray *objects;
@property (nonatomic) NSUInteger objectIndex;
-(void)loadObjects;

- (IBAction)reload:(id)sender;
- (IBAction)message:(id)sender;
@end
