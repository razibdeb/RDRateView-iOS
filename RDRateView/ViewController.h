//
//  ViewController.h
//  RDRateView
//
//  Created by Razib Chandra Deb on 12/3/15.
//  Copyright © 2015 Razib Chandra Deb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RDRateView.h"
@interface ViewController : UIViewController <RDRateViewDelegate>

@property (weak, nonatomic) IBOutlet RDRateView *myRateView;

@end

