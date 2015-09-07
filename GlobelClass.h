//
//  GlobelClass.h
//  Quezt
//
//  Created by 9Dim on 22/05/15.
//  Copyright (c) 2015 XCube Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlobelClass : NSObject
//------Live-----//#define BASEURL @"http://quezt_versions/Version1.2/"


#define BASEURL @"http://quezt.net/v1.8.3/"
#define GOOGLE_API_KEY @"AIzaSyBBXpapxcAoMsRJCzThqv3lUC2ZDbLe1js"
#define GOOGLE_USERIMG_URL @"https://www.googleapis.com/plus/v1/people/%@?fields=image&key="


//-----Local----//#define BASEURL @"http://xcubeinc.com/quezt_versions/Version1.3/"

#define RGB(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]



//#define fontMacro(_name_, _size_) ((UIFont *)[UIFont fontWithName:(NSString *)(_name_) size:(CGFloat)(_size_)])

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


///_______Font for Text_________

#define TITLE_FONT [UIFont fontWithName:@"SourceSansPro-Semibold" size:14]
#define QUESTION_FONT [UIFont fontWithName:@"SourceSansPro-Regular" size:16]
#define ANS_FONT [UIFont fontWithName:@"SourceSansPro-Bold" size:12]
#define SOCOALICON_FONT [UIFont fontWithName:@"SourceSansPro-Regular" size:12]
#define LOC_FONT [UIFont fontWithName:@"SourceSansPro-Bold" size:11]




///----------(No Of Quezt Data On Load)----------

extern int const QUEZTCELL_NO;
extern int const VOTERLIST_HEIGHT;
extern int const VLVIEW_HEIGHT;

///>>>>>>>>>>>>>>URL//>>>>>>>>>>>>>>>>>>>>>>
extern NSString * const KMPTIMECHANGED;

extern NSString * const KCLIENTID;

extern NSString * const BASEURL_STRING;

extern NSString * const BASEURL_STRING_NEW ;

extern NSString * const BASEURL_STRING_POLL;

extern NSString * const BASEURL_STRING_CREATEQUEZT;

extern NSString * const BASEURL_STRING_LOGIN;

extern NSString * const BASEURL_STRING_SAVEUSERNAME;

extern NSString * const BASEURL_STRING_DELETEQUESTION;

extern NSString * const BASEURL_STRING_ACCESSUSERSLISTWHOVOTED;

extern NSString * const BASEURL_STRING_USERLOGGEDIN;

extern NSString * const BASEURL_STRING_ACCESSUSERSLISTWHOLIKED;

extern NSString * const BASEURL_STRING_LISTOFTAGS;

extern NSString * const BASEURL_STRING_IMAGEDOWNLOADURL;

extern NSString * const BASEURL_STRING_PROFILEIMAGEDOWNLOADURL;

extern NSString * const BASEURL_STRING_NOTFYDETAIL;

extern NSString * const BASEURL_STRING_SHAREQUEZT;

extern NSString * const BASEURL_STRING_EDITUSERPROFILEDATA;

extern NSString * const BASEURL_STRING_GETALLTAGS;

extern NSString * const BASEURL_STRING_EDITPROFILEIMAGE;

extern NSString * const BASEURL_STRING_EDITPROFILEDATA;

extern NSString * const BASEURL_STRING_ACCESSNOTIFICATION;

extern NSString * const BASEURL_STRING_SEARCHTEXTBASED;

extern NSString * const BASEURL_STRING_FAVOURITE;

extern NSString * const BASEURL_STRING_ANSWER;

extern NSString * const BASEURL_STRING_NOOFFOLLOWERS;

extern NSString * const BASEURL_STRING_CREATEFOLLOWERS;

extern NSString * const BASEURL_STRING_DELETEFOLLOWERS;

extern NSString * const BASEURL_STRING_CHEAKFOLLOWERS;

extern NSString * const BASEURL_STRING_TOTALQUESTIONPOSTEDBYUSER;

extern NSString * const BASEURL_STRING_MARKNOTIFICATION;

extern NSString * const BASEURL_STRING_OtherUserQuezt;

extern NSString * const BASEURL_STRING_TERMSANDCONDITION;

extern NSString * const URL_NOTIFICATION;
extern NSString * const URL_READ_ALLNOTIFICATION;
extern NSString * const URL_GETNOTIFICATION_STATUS;

extern NSString * const URL_SAVEDEVICETOKEN ;


extern NSString * const URL_IMAGEDOWNLOAD_1X;
extern NSString * const URL_IMAGEDOWNLOAD_2X;
extern NSString * const URL_IMAGEDOWNLOAD_3X;



///---------User Profile Dictionery-------------------------------------------------------------------------

extern NSString * const USERDETAILS ;
//-------SubKeys
extern NSString * const FIRSTNAME ;
extern NSString * const SOCIALID ;
extern NSString * const SOCIALTYPE ;
extern NSString * const LASTNAME ;
extern NSString * const USER_NAME;
extern NSString * const ID;
extern NSString * const EMAIL;
extern NSString * const GENDER ;
extern NSString * const PROFILE_IMAGE;
extern NSString * const DATEOFBIRTH;
extern NSString * const CITY;
extern NSString * const COUNTRY;
extern NSString * const DEVICE_TOKEN;
extern NSString * const TRENDING_ARRAY;
extern NSString * const REFRESHVAL;
extern NSString * const USERLOC;
///-------------------------(Some Subjected perdefined Strings for Sharing)----------------------------------------------


extern NSString * const EMAIL_SUBJECT;
extern NSString * const SHARE_SUBJECT;
extern NSString * const ALREADY_VOTED;


//---------Extra Globel Strings___________
extern NSString * const S_ID;
extern NSString * const STATUS_CODE;
extern NSString * const STATUS_MSG;
extern NSString * const APP_PLATEFORM;
extern NSString * const APP_VERSION;


extern NSString * const SOCIAL_TYPE;
extern NSString * const SOCIAL_TYPE_FB;
extern NSString * const SOCIAL_TYPE_TW;
extern NSString * const SOCIAL_TYPE_GP;
extern NSString * const SOCIAL_TYPE_Q;


extern NSString * const FACEBOOKSHARING;
extern NSString * const CREATESCREENSHOT;
extern  NSString * const WEBUSERTEXT;

@end
