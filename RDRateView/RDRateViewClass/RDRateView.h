//
//  RDRateView.h
//  RDRateView
//
//  Created by Razib Chandra Deb on 12/3/15.
//  Copyright © 2015 Razib Chandra Deb. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RDRateViewDelegate <NSObject>
@optional
-(void)rateChanged:(int)newRate;
@end



IB_DESIGNABLE
@interface RDRateView : UIView

@property (weak) IBOutlet id <RDRateViewDelegate> delegate;

@property (nonatomic) IBInspectable NSInteger Items;
@property (nonatomic) IBInspectable UIColor  * color;
@end
