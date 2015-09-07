//
//  ViewController.m
//  Steller
//
//  Created by XCube Inc. on 18/08/15.
//  Copyright (c) 2015 XCube Inc. All rights reserved.
//

#import "ViewController.h"
#import "MainMenuVC.h"
#import "GlobalClass.h"
#import "MMNavigationController.h"
#import "UIViewController+MMDrawerController.h"
#import "AppDelegate.h"
#define RGB(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]
@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated
{
    [self.mm_drawerController setOpenDrawerGestureModeMask: MMOpenDrawerGestureModeNone];

}

- (void)viewDidLoad {
    [super viewDidLoad];
      [self.navigationController setNavigationBarHidden:YES];
    
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"Username" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    userNametxt.attributedPlaceholder = str;
    
    NSAttributedString *strr = [[NSAttributedString alloc] initWithString:@"Password" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    passwordtxt.attributedPlaceholder = strr;
    
    
    CALayer *rightBorder = [CALayer layer];
    rightBorder.borderColor = RGB(225, 225, 225).CGColor;
    rightBorder.borderWidth = 1.5;
    rightBorder.frame = CGRectMake(-2,-2, CGRectGetWidth(userNametxt.frame)+4, CGRectGetHeight(userNametxt.frame)+2);
    [userNametxt.layer addSublayer:rightBorder];
    userNametxt.backgroundColor=[UIColor clearColor];
    
    CALayer *rightBorder1 = [CALayer layer];
    rightBorder1.borderColor = RGB(225, 225, 225).CGColor;
    rightBorder1.borderWidth = 1.5;
   
    rightBorder1.frame = CGRectMake(-2,-2, CGRectGetWidth(passwordtxt.frame)+4, CGRectGetHeight(passwordtxt.frame)+2);
    [passwordtxt.layer addSublayer:rightBorder1];
    passwordtxt.backgroundColor=[UIColor clearColor];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)loginAction:(id)sender
{
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    delegate.isUserLoggedIn = YES;
    
       [[NSUserDefaults standardUserDefaults] setBool:YES forKey:USERLOGGEDIN];
    
    NSString *deviceType = [UIDevice currentDevice].model;
    
    
    if (![self validateAction]) {
        
    } else {
    
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPhone Simulator"]) {
        
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        MainMenuVC *myVC = (MainMenuVC *)[storyboard instantiateViewControllerWithIdentifier:@"MainMenuVC"];
      //  [self presentViewController:myVC animated:NO completion:nil];
        
        UINavigationController * nav = [[MMNavigationController alloc] initWithRootViewController:myVC];
        [self.mm_drawerController
         setCenterViewController:nav
         withCloseAnimation:YES
         completion:nil];
        
    
   }
    else {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"StoryboardiPad" bundle:nil];
        MainMenuVC *myVC = (MainMenuVC *)[storyboard instantiateViewControllerWithIdentifier:@"MainMenuVC"];
        [self presentViewController:myVC animated:NO completion:nil];
        
    } }
}

-(BOOL)validateAction
{
    if (userNametxt.text.length == 0) {
        
        [userNametxt becomeFirstResponder];
         
        [GlobalClass displayToastWithMessage:@"User name can not be empty"];
        
        return NO;
    } else if (passwordtxt.text.length == 0) {
        
        [passwordtxt becomeFirstResponder];
         [self displayToastWithMessage:@"Password can not be empty"];
        
        return NO;
    }
    
    return YES;
}
/*
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    CGRect newframe = self.userNameView.frame;
    newframe.origin.y = 0;
    newframe.size.height = self.view.bounds.size.height ;
    self.userNameView.frame = newframe;
    
    
    
    NSLog(@"%s:%d ", __func__, __LINE__);
    [_userNameTxt resignFirstResponder];
    [_emailTxt resignFirstResponder];
    return YES;
}*/

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField.tag == 73) {
      
        CGRect newframe = [[UIApplication sharedApplication] keyWindow].frame;
        
        if (self.view.bounds.size.height == 480) {
            newframe.origin.y = -80;
        }
        else {
            newframe.origin.y = -100; }
       newframe.size.height = [[UIApplication sharedApplication] keyWindow].bounds.size.height + 40;
        
        self.view.frame = newframe;
        
        
        
    } else if (textField.tag == 74)
    {
        
        
        CGRect newframe = [[UIApplication sharedApplication] keyWindow].frame;
        if (self.view.bounds.size.height == 480) {
            newframe.origin.y = -80;
        }
        else {
            newframe.origin.y = -100; }
        newframe.size.height = [[UIApplication sharedApplication] keyWindow].bounds.size.height + 40;
        
        self.view.frame = newframe;
        
    }
}



-(void)displayToastWithMessage:(NSString *)toastMessage
{
    [[NSOperationQueue mainQueue] addOperationWithBlock:^ {
        UIWindow * keyWindow = [[UIApplication sharedApplication] keyWindow];
        UILabel *toastView = [[UILabel alloc] init];
        toastView.text = toastMessage;
        toastView.font = [UIFont systemFontOfSize:12];
        toastView.textColor = [UIColor whiteColor];
        toastView.backgroundColor = [UIColor blackColor];
        toastView.textAlignment = NSTextAlignmentCenter;
        toastView.frame = CGRectMake(0.0, 0.0, keyWindow.frame.size.width/2.0, 50.0);
        toastView.layer.cornerRadius = 10;
        toastView.layer.masksToBounds = YES;
        toastView.center = keyWindow.center;
        
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

-(IBAction)Pop:(id)sender
{
    [self dismissViewControllerAnimated:NO completion:nil];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    CGRect newframe = self.view.frame;
    newframe.origin.y = 0;
    newframe.size.height =  [[UIApplication sharedApplication] keyWindow].frame.size.height;
    self.view.frame = newframe;
    
    [userNametxt resignFirstResponder];
    [passwordtxt resignFirstResponder];
    return YES;
}



-(IBAction)privacyPolicyAction:(id)sender
{
    UITextView *privacyPolicyview = [[UITextView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height)];
    privacyPolicyview.text = @"\n\nTerms & Conditions \n\n Lorem ipsum dolor sit amet, te sea homero eruditi adipiscing, vim ex scripserit persequeris. Est te solum aliquip facilisi, ei platonem maluisset constituam pri, mei dolore recteque cu. Porro efficiantur sit cu, debet audiam veritus sed ne. Dolore eleifend ea pro, tempor aeterno ex mei, pro eu iuvaret complectitur. Ne enim civibus scripserit qui, est suas veri eu, cum ne audire menandri necessitatibus.  His no constituto philosophia, nusquam liberavisse est ea, sed forensibus consectetuer interpretaris ea. Qui te sanctus blandit conceptam. Mazim aliquid nec ut, usu amet autem ei. Mei ea graeco omittantur. Id pro commodo corrumpit, putent insolens ius ad.   Nominavi mnesarchum duo at, erant deseruisse mea id. Nec eius inani et, ius ei detraxit maiestatis. Ad has melius feugiat torquatos. No cum velit gloriatur, tota animal vel at. Ea erroribus philosophia cum, per an odio ludus possit, ex nemore contentiones pro.   Ad verear expetendis scripserit has, ei duis sanctus eos. Ut est noluisse principes, sit eu vivendum iracundia consetetur. Sit adipisci gloriatur eu. Eum ne soleat nonumes. Autem invidunt at mel, eam evertitur intellegat no.  Usu no maluisset persequeris. Qui ex sonet noluisse tacimates, id elitr aliquip voluptua sed, justo facilis sit ut. Ne labores singulis inciderint vis. Cibo percipit te mea. Duo minim quodsi perfecto ad. Mazim tibique per ea.  Et mel semper principes, at prompta assueverit vix. Oblique imperdiet dignissim at vix. Sit ex paulo omnesque placerat, te elitr nostrud scripserit vis. Errem nostro periculis ex duo. Cum debitis maiestatis no.   Mea diam meis veritus ea, esse maiestatis ei p";
    

    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.size.height - 40, self.view.frame.size.width, 40)];
    [btn setBackgroundColor:BtnBack_CLR];
    [btn setTitle:@"Cancel" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(cancelAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [privacyPolicyview addSubview:btn];
        [self.view addSubview:privacyPolicyview];
    
}
-(IBAction)cancelAction:(id)sender {
    
    [[sender superview] removeFromSuperview];
  //  [sender removeFromSuperview];
}


@end
