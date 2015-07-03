//
//  ACRectangularMagnifier.m
//  MagnifyingGlassDemo
//
//  Original project by Arnaud Coomans on 18/02/12.
//  This file created by David K. Kim on 7/3/15.
//
//

#import "ACRectangularMagnifier.h"
#import <QuartzCore/QuartzCore.h>
#define SYSTEM_VERSION_EQUAL_OR_GREATER_THAN(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

static CGFloat const kACRectangularMagnifyingGlassDefaultHalfWidth = 40;
static CGFloat const kACRectangularMagnifyingGlassDefaultOffset = -40;
static CGFloat const kACRectangularMagnifyingGlassDefaultScale = 1.5;

@implementation ACRectangularMagnifier

- (id)init {
    self = [self initWithFrame:CGRectMake(0, 0, kACRectangularMagnifyingGlassDefaultHalfWidth*2, kACRectangularMagnifyingGlassDefaultHalfWidth*2)];
    return self;
}


- (id)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.layer.borderColor = [[UIColor lightGrayColor] CGColor];
        self.layer.borderWidth = 3;
        self.layer.cornerRadius = 0.0f;
        self.layer.masksToBounds = NO;
        self.touchPointOffset = CGPointMake(0, kACRectangularMagnifyingGlassDefaultOffset);
        self.scale = kACRectangularMagnifyingGlassDefaultScale;
        self.viewToMagnify = nil;
        self.scaleAtTouchPoint = YES;
    }
    return self;
}

- (void)setFrame:(CGRect)f {
    super.frame = f;
    self.layer.cornerRadius = 0.0f;
}



@end
