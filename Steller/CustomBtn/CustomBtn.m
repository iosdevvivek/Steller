//
//  CustomBtn.m
//  Steller
//
//  Created by XCube Inc. on 19/08/15.
//  Copyright (c) 2015 XCube Inc. All rights reserved.
//

#import "CustomBtn.h"
 
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)
#define RGB(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]

@implementation CustomBtn


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    self.backgroundColor = [UIColor whiteColor];
    NSLog(@" buton width %f",self.frame.size.width);
    
    lbl = [[UILabel alloc] initWithFrame:CGRectMake(15, 47, self.frame.size.width -30, 60)];
    lbl.textAlignment =   NSTextAlignmentCenter;
    lbl.numberOfLines = 0;
    lbl.text = _title;
    lbl.textColor = RGB(74, 170, 246);
    lbl.font = (IS_IPAD)?[UIFont systemFontOfSize:15]:[UIFont systemFontOfSize:11];
    
//        [[UIScreen mainScreen] bounds].size.width;
    
   
    
    
    
    
    //ImageView
    if (IS_IPHONE_6) {
        NSLog(@"%f",SCREEN_WIDTH);
         imgView = [[UIImageView alloc] initWithFrame:CGRectMake(33, 15, 23, 23)];
        imgView.image = [UIImage imageNamed:_imagename];
        
        [self addSubview:imgView];
        
    } else if (IS_IPAD) {
         if (SCREEN_HEIGHT == 768) {
             imgView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 25, 120, 120)]; }
         else {
             imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 25, 120, 120)];
         }
        imgView.image = [UIImage imageNamed:_imagename];
         [self addSubview:imgView];
        
        lbl.frame = CGRectMake(15, self.frame.size.height -50, self.frame.size.width -30, 60) ;
        
    }
    
    else {
    
     imgView = [[UIImageView alloc] initWithFrame:CGRectMake(5, -5, 89, 80)];
    imgView.image = [UIImage imageNamed:_imagename];
    
         }
    [self addSubview:imgView];
    
    // layer
    self.layer.cornerRadius = 8;
    self.layer.masksToBounds = YES;
    
    
    [self addSubview:lbl];
}

-(void)resetframe
{   if (IS_IPAD) {
    if (SCREEN_HEIGHT == 768) {
       
        imgView.frame = CGRectMake(50, 25, 120, 120);
        lbl.frame =  CGRectMake(0, self.frame.size.height -50, 220 , 60);
        
    } else {
        
         imgView.frame = CGRectMake(20 , 25, 120, 120);
         lbl.frame =  CGRectMake(0, self.frame.size.height -50, 160 , 60);
        
    }
    
    
    
    
}
    
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 50, 30)];
        lbl.text = @"vivek";
        
        [self addSubview:lbl];
    
    }
    return self;
}

@end
