//
//  CompanyWatchVC.m
//  Steller
//
//  Created by XCube Inc. on 19/08/15.
//  Copyright (c) 2015 XCube Inc. All rights reserved.
//

#import "CompanyWatchVC.h"
#import "MMDrawerBarButtonItem.h"
#import "MMLogoView.h"
#import "UIViewController+MMDrawerController.h"
#import "GlobalClass.h"
const CGFloat btnWitdth = 80.0;
const CGFloat btnSpace = 60;
const CGFloat btnX = 10;
@interface CompanyWatchVC ()
{
    NSArray *btnName;
}
@end

@implementation CompanyWatchVC

-(void)viewWillAppear:(BOOL)animated
{
    [self.mm_drawerController setOpenDrawerGestureModeMask: MMOpenDrawerGestureModeAll];

}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.navigationController setNavigationBarHidden:NO];
    
    UIColor * barColor = [UIColor
                          colorWithRed:247.0/255.0
                          green:249.0/255.0
                          blue:250.0/255.0
                          alpha:1.0];
    [self.navigationController.navigationBar setBarTintColor:barColor];
    
     
    CGRect frame = CGRectMake(0, 0, 400, 44);
    UILabel *label = [[UILabel alloc] initWithFrame:frame] ;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont systemFontOfSize:12];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = CellText_CLR;
    label.text = @"Company Watch";
    self.navigationItem.titleView = label;
  //   [self.navigationItem setTitleView:label];
   // [self.navigationItem setTitle:@"Company Watch"];
   
   // [self.navigationController setTitle:@"Company Watch"];
    [self.navigationController.view.layer setCornerRadius:10.0f];
    
    btnName = @[@"Stats",@"Profile",@"Financial",@"charting",@"Coverage"];
    
    scroll.contentSize = CGSizeMake(400,36);
    
    [self addbtnOnScroll];
     [self setupLeftMenuButton];
    
    UIButton *button=(UIButton *)[scroll viewWithTag:1];
    [button setSelected:YES];
    
    // Do any additional setup after loading the view.
}

-(void)setupLeftMenuButton{
    MMDrawerBarButtonItem * leftDrawerButton = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(leftDrawerButtonPress:)];
    [self.navigationItem setLeftBarButtonItem:leftDrawerButton animated:YES];
}

#pragma mark - Button Handlers
-(void)leftDrawerButtonPress:(id)sender{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}


-(void)addbtnOnScroll {
    
    for (int val =0 ; val<5; val++) {
        
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(btnX +btnWitdth*val +btnSpace*val, 5, btnWitdth, 30)];
        btn.tag = val+1;
        [btn setTitle:[btnName objectAtIndex:val] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:11];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"BtnBackGround"] forState:UIControlStateSelected];
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        [scroll addSubview:btn];
        
    }
 
}

-(IBAction)btnAction:(id)sender
{
       [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [sender setSelected:YES];
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
