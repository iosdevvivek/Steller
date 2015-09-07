//
//  GlobalClass.h
//  Steller
//
//  Created by XCube Inc. on 19/08/15.
//  Copyright (c) 2015 XCube Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define RGB(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]

#define FONT_R(S) [UIFont fontWithName:@"SourceSansPro-Regular" size:(CGFloat)(S)]
#define FONT_L(S) [UIFont fontWithName:@"SourceSansPro-Light" size:(CGFloat)(S)]
#define FONT_B(S) [UIFont fontWithName:@"SourceSansPro-Bold" size:(CGFloat)(S)]
#define FONT_SB(S) [UIFont fontWithName:@"SourceSansPro-Semibold" size:(CGFloat)(S)]
#define FONT_EL(S) [UIFont fontWithName:@"SourceSansPro-ExtraLight" size:(CGFloat)(S)]


///_______Colour for Text_________


#define TITLE_CLR (RGB(102,102,102))
#define QUESTION_CLR (RGB(131,132,133))
#define ANS_CLR (RGB(119,119,119))
#define SOCOALICON_CLR (RGB(119,119,119))
#define CellText_CLR (RGB(74,169,246))
#define Slider_CLR (RGB(240,240,240))
#define BtnBack_CLR (RGB(74,169,246))

///_______Font for Text_________

#define TITLE_FONT [UIFont fontWithName:@"SourceSansPro-Semibold" size:14]
#define QUESTION_FONT [UIFont fontWithName:@"SourceSansPro-Regular" size:16]
#define ANS_FONT [UIFont fontWithName:@"SourceSansPro-Bold" size:12]
#define SOCOALICON_FONT [UIFont fontWithName:@"SourceSansPro-Regular" size:12]
#define LOC_FONT [UIFont fontWithName:@"SourceSansPro-Bold" size:11]
@interface GlobalClass : NSObject

extern NSString * const USERLOGGEDIN;
+(BOOL)IS_IPHONE_6;
+(void)displayToastWithMessage:(NSString *)toastMessage;
@end
