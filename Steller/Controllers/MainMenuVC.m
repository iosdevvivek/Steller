//
//  MainMenuVC.m
//  Steller
//
//  Created by XCube Inc. on 19/08/15.
//  Copyright (c) 2015 XCube Inc. All rights reserved.
//

#import "MainMenuVC.h"
#import "CustomBtn.h"
#import "CompanyWatchVC.h"


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

const CGFloat buttonWidth = 220;
const CGFloat buttonX     = 100;
const CGFloat buttonSpace = 100;
const CGFloat buttonY     = 100;



/*
* This class will contain multiple buttons
* buttons size will be different on rotation
* buttons should be created progrmatically
*
*
*
*
*/
@interface MainMenuVC ()
{
    
    IBOutlet CustomBtn *companyWatch;
    NSArray *buttonNames;
    
}

@end

@implementation MainMenuVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self.navigationController setNavigationBarHidden:YES];
    
    buttonNames = @[@"Company Watch",@"Industry Watch",@"Bench Marking",@"Charting",@"Screener",@"Portfolio Analysis",@"My Feeds",@"Settings",@"Logout"];
    
    
    for (int val = 10; val<19; val++) {
        
        CustomBtn *button=(CustomBtn *)[self.view viewWithTag:val];
        button.title = [buttonNames objectAtIndex:val-10];
        button.imagename = [NSString stringWithFormat:@"%d",val-9];
        button.backgroundColor = [UIColor whiteColor];
        if (IS_IPAD) {
            
            
            if (SCREEN_HEIGHT == 768) {
                
            CGRect frame = button.frame;
            frame.size.width = 220;
                button.frame = frame;
            } else {
                CGRect frame = button.frame;
                frame.size.width = 160;
                button.frame = frame;
                    
                }
            
        }
        
        
        [button addTarget:self action:@selector(BtnAction:) forControlEvents:UIControlEventTouchUpInside];
        
        
    }
    
    companyWatch.title = @"Company Watch";
    
    // Do any additional setup after loading the view.
}

/*
 * button creation
 */

-(void)buttonCreation
{
    
    for (int X = 0; X <3; X++) {
        
        for (int Y = 0; Y <3; Y++) {
            
            
            CustomBtn *btn = [[CustomBtn alloc] initWithFrame:CGRectMake(buttonX, buttonY, buttonWidth, buttonWidth)];
            
            
            
        }
        
        
    }
    
}


- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    // do something after rotation
    
    for (int val = 10; val<19; val++) {
        
        CustomBtn *button=(CustomBtn *)[self.view viewWithTag:val];
        [button resetframe];
        if (IS_IPAD) {
            
            NSLog(@"%f",SCREEN_HEIGHT);
            
            if (SCREEN_HEIGHT == 768) {
                
                CGRect frame = button.frame;
                frame.size.width = 220;
                button.frame = frame;
            } else {
                CGRect frame = button.frame;
                frame.size.width = 160;
                button.frame = frame;
                
            }
            
        }
        
        
    }
}

-(IBAction)BtnAction:(id)sender
{
    
    switch ([sender tag]) {
        case 10:
            [self callCompanywatch];
                
            
            break;
            case 11:
            
            break;
        default:
            break;
    }
    
    
}

-(void)callCompanywatch
{
    
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPhone Simulator"]) {
        
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        CompanyWatchVC *myVC = (CompanyWatchVC *)[storyboard instantiateViewControllerWithIdentifier:@"CompanyWatchVC"];
    //    [self presentViewController:myVC animated:NO completion:nil];
    
        [self.navigationController pushViewController:myVC animated:YES];
    
    }
    else {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"StoryboardiPad" bundle:nil];
        CompanyWatchVC *myVC = (CompanyWatchVC *)[storyboard instantiateViewControllerWithIdentifier:@"CompanyWatchVC"];
     //   [self presentViewController:myVC animated:NO completion:nil];
          [self.navigationController pushViewController:myVC animated:YES];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)Pop:(id)sender
{
    [self dismissViewControllerAnimated:NO completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
