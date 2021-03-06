// Copyright (c) 2013 Mutual Mobile (http://mutualmobile.com/)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.


#import "MMSideDrawerTableViewCell.h"
#import "GlobalClass.h"

@implementation MMSideDrawerTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setAccessoryCheckmarkColor:[UIColor whiteColor]];

        UIView * backgroundView = [[UIView alloc] initWithFrame:self.bounds];
        [backgroundView setAutoresizingMask:UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth];
        UIColor * backgroundColor;
        backgroundColor = [UIColor colorWithRed:240.0/255.0
                                          green:240.0/255.0
                                           blue:240.0/255.0
                                          alpha:1.0];
        
        UIImage *arrowimg = [UIImage imageNamed:@"right-arrowNew.png"];
        
    //    UIImageView *arrow = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width -40, 10, arrowimg.size.width, arrowimg.size.height)];
        
        UIImageView *arrow = [[UIImageView alloc] initWithFrame:CGRectMake(240, 10, 12, 30)];
        
        
        arrow.image = arrowimg;
        
        [backgroundView addSubview:arrow];
        
        [backgroundView setBackgroundColor:backgroundColor];
      // [backgroundView setBackgroundColor:[UIColor whiteColor]];

        [self setBackgroundView:backgroundView];
        
        [self.textLabel setBackgroundColor:[UIColor clearColor]];
        [self.textLabel setTextColor:[UIColor
                                      colorWithRed:230.0/255.0
                                      green:236.0/255.0
                                      blue:242.0/255.0
                                      alpha:1.0]];
       
        
        
        [self.textLabel setTextColor:CellText_CLR];
    }
    return self;
}

-(void)updateContentForNewContentSize{
    if([[UIFont class] respondsToSelector:@selector(preferredFontForTextStyle:)]){
        [self.textLabel setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
    }
    else {
        [self.textLabel setFont:[UIFont boldSystemFontOfSize:16.0]];
    }
}

@end
