//
//  GlobalClass.m
//  Steller
//
//  Created by XCube Inc. on 19/08/15.
//  Copyright (c) 2015 XCube Inc. All rights reserved.
//

#import "GlobalClass.h"
#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)


/*
* Create functions to determine device
* function to determine the orientaion
*/


@implementation GlobalClass

NSString * const USERLOGGEDIN = @"isUserLoggedIn";


+(void)displayToastWithMessage:(NSString *)toastMessage
{
    [[NSOperationQueue mainQueue] addOperationWithBlock:^ {
        UIWindow * keyWindow = [[UIApplication sharedApplication] keyWindow];
        UILabel *toastView = [[UILabel alloc] init];
        toastView.text = toastMessage;
 
        
        toastView.font =  (IS_IPAD)?[UIFont systemFontOfSize:20]:[UIFont systemFontOfSize:11];
        toastView.textColor = [UIColor whiteColor];
        toastView.backgroundColor = [UIColor blackColor];
        toastView.textAlignment = NSTextAlignmentCenter;
        toastView.frame = CGRectMake(0.0, 0.0, keyWindow.frame.size.width/2.0, 50.0);
        toastView.layer.cornerRadius = 10;
        toastView.layer.masksToBounds = YES;
        toastView.center = keyWindow.center;
     //  [ toastView sizeToFit] ;
        
        [keyWindow addSubview:toastView];
        
        [UIView animateWithDuration: 3.0f
                              delay: 0.0
                            options: UIViewAnimationOptionCurveEaseOut
                         animations: ^{
                             toastView.alpha = 0.0;
                         }
                         completion: ^(BOOL finished) {
                             [toastView removeFromSuperview];
                         }
         ];
    }];
}

+(BOOL)IS_IPHONE_6
{
    
    
    
    
    return YES;
    
}



@end