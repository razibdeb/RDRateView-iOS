//
//  RDRateView.m
//  RDRateView
//
//  Created by Razib Chandra Deb on 12/3/15.
//  Copyright © 2015 Razib Chandra Deb. All rights reserved.
//

#import "RDRateView.h"

@implementation RDRateView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

{
    NSMutableArray * buttonArray;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //[self drawRateView];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self drawRateView];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
     [self drawRateView];
}

-(void) drawRateView
{
    NSLog(@"drawRateView called");
    buttonArray = [[NSMutableArray alloc]init];
    
    CGRect frame = self.frame;
    
    float buttonWidth = frame.size.width / self.Items;
    
    CGRect buttonFrame = CGRectMake(0, 0, buttonWidth, frame.size.height);
    
    for (int i = 0; i < self.Items; i++) {
        UIButton * button = [[UIButton alloc]initWithFrame:buttonFrame];
        [button setTitle:[NSString stringWithFormat:@"%d",i] forState:UIControlStateNormal];
        [self addSubview:button];
        buttonFrame.origin.x += buttonWidth;
        button.tag = i;
        [button addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
        [buttonArray addObject:button];
    }
    self.frame = frame;
    self.backgroundColor = self.color;
}

- (void)setNeedsLayout {
    [super setNeedsLayout];
    [self setNeedsDisplay];
}
- (void)prepareForInterfaceBuilder {

    NSLog(@"%f", self.frame.size.height);
    [self drawRateView];
}

-(void) buttonTouched:(id) sender
{
    UIButton * buttonTapped = (UIButton *)sender;
    for (int i = 0; i <= buttonTapped.tag; i++) {
        UIButton * button = (UIButton *) [buttonArray objectAtIndex:i];
        [button setBackgroundColor:[UIColor redColor]];
    }
    for (int i = ((int)buttonTapped.tag + 1); i < self.Items; i++) {
        UIButton * button = (UIButton *) [buttonArray objectAtIndex:i];
        [button setBackgroundColor:[UIColor greenColor]];
    }
    
    if ([self.delegate respondsToSelector:@selector(rateChanged:)]) {
        [self.delegate rateChanged:(int)buttonTapped.tag];
    }
    
}
@end
