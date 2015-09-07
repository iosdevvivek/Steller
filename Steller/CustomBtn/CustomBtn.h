//
//  CustomBtn.h
//  Steller
//
//  Created by XCube Inc. on 19/08/15.
//  Copyright (c) 2015 XCube Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomBtn : UIButton
{
    UIImageView *imgView;
    UILabel *lbl;
}

@property (strong,nonatomic) NSString *title;
@property (strong,nonatomic) NSString *imagename;
-(void)resetframe;
@end
