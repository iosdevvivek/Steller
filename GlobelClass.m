//
//  GlobelClass.m
//  Quezt
//
//  Created by 9Dim on 22/05/15.
//  Copyright (c) 2015 XCube Inc. All rights reserved.
//

#import "GlobelClass.h"

@implementation GlobelClass

///---------User Profile Dictionery----------

NSString * const USERDETAILS = @"UserDetails";
NSString * const FIRSTNAME = @"first_name";
NSString * const LASTNAME = @"last_name";
NSString * const EMAIL = @"Email";
NSString * const ID = @"id";
NSString * const GENDER = @"Gender";
NSString * const SOCIALID = @"SocialID";
NSString * const USER_NAME = @"username";
NSString * const SOCIALTYPE = @"SocialType";
NSString * const PROFILE_IMAGE = @"ProfileImage";
NSString * const DATEOFBIRTH = @"DateofBirth";
NSString * const CITY = @"City";
NSString * const COUNTRY = @"Country";
NSString * const DEVICE_TOKEN = @"Devicetoken";
NSString * const TRENDING_ARRAY = @"TrendingArray";
NSString * const REFRESHVAL = @"RefreshVal";
NSString * const USERLOC = @"UserLoc";

///-------------------------(Some Subjected perdefined Strings)--------


NSString * const EMAIL_SUBJECT = @"Please spare a minute to answer this";
NSString * const SHARE_SUBJECT = @"Hey, can you please answer this question for me ";
NSString * const ALREADY_VOTED = @"Already Voted";


////-----------------------(NavigationString)----------------

//UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
//ContainerVC *myVC = (ContainerVC *)[storyboard instantiateViewControllerWithIdentifier:@"ContainerVC"];
//[self presentViewController:myVC animated:YES completion:nil];




//http://xcubeinc.com/quezt/

//http://xcubeinc.com/quezt_versions/Version1.1



//New Urls



NSString * const BASEURL_STRING_SAVEUSERDATA   =BASEURL @"saveUserData.php?";

//http://xcubeinc.com/quezt_versions/Version1.1/saveUserData.php?sid=12345&&social_type=Facebook&&first_name=ankit&&last_name=rathi&&gender=male&&dob=2015-5-5&&profile_pic_64=fff&&image_unique_name=ankit&&city=ghaziabad&&country=india&&platform=android&&app_version=1.1&&device_token=bkjdbkjdc23223n

//create Quezt
//http://xcubeinc.com/quezt_versions/Version1.1/createQuezt.php?sid=12345&&question=this%20is%20my%20first%20question&&question_type=public&&tags=1,lion&&num_options=2&&option0=this%20is%20first%20option&&option1=this%20is%20second%20option&&total_images=0&&tags_string=cat,lion

//Quezt on Text and Tag BAsis
//http://xcubeinc.com/quezt_versions/Version1.1/QueztOnTagsAndTextBasis.php?sid=12345&&all&&limit_start_index=0&&limit_records=12&&text=cat,shiva,last


//NSString * const KCLIENTID = @"544051165165-0vm9epcm2oidnhhlnule501ek7gi6sm2.apps.googleusercontent.com";
NSString * const KCLIENTID = @"339878681103-pueahsbub231t8vl5f2oub4rroa6pd53.apps.googleusercontent.com";


NSString * const BASEURL_STRING   =BASEURL @"saveUserData.php?";

NSString * const BASEURL_STRING_NEW  =BASEURL @"email-check.php?";

NSString * const BASEURL_STRING_POLL  =BASEURL @"requestQuestwithlimit.php?";

NSString * const BASEURL_STRING_CREATEQUEZT  =BASEURL @"createQuezt.php?";

NSString * const BASEURL_STRING_LOGIN  =BASEURL @"saveUserData.php?";

NSString * const BASEURL_STRING_SAVEUSERNAME  =BASEURL @"saveUsername.php?";

NSString * const BASEURL_STRING_DELETEQUESTION =BASEURL @"deleteUserQueztByOwn.php?";

NSString * const BASEURL_STRING_ACCESSUSERSLISTWHOVOTED =BASEURL @"accessUsersListWhoVotedQuestion.php?";

NSString * const BASEURL_STRING_NOTFYDETAIL =BASEURL @"requestQuestwithlimit.php?";

NSString * const BASEURL_STRING_USERLOGGEDIN   =BASEURL @"saveUserData.php?";

NSString * const BASEURL_STRING_ACCESSUSERSLISTWHOLIKED =BASEURL @"accessUsersListWhoLikedQuestion.php?";

NSString * const BASEURL_STRING_LISTOFTAGS =BASEURL @"ListOfTags.php?";

NSString * const BASEURL_STRING_SHAREQUEZT =BASEURL @"web/voting.php?";

NSString * const BASEURL_STRING_EDITUSERPROFILEDATA =BASEURL @"editUserProfile.php?";

NSString * const BASEURL_STRING_GETALLTAGS =BASEURL @"ListOfTags.php?";


NSString * const BASEURL_STRING_EDITPROFILEIMAGE =BASEURL @"editProfileImage.php?";

NSString * const BASEURL_STRING_EDITPROFILEDATA =BASEURL @"editUserProfile.php?";

NSString * const BASEURL_STRING_ACCESSNOTIFICATION =BASEURL @"accessNotifications.php?";

//NSString * const BASEURL_STRING_ACCESSNOTIFICATION = @"http://172.16.1.100:7070/jagat/quest/accessNotifications.php?";

NSString * const BASEURL_STRING_MARKNOTIFICATION =BASEURL @"markNotificationAsRead.php?"
;
NSString * const BASEURL_STRING_SEARCHTEXTBASED =BASEURL @"QueztOnTagsAndTextBasis.php?";

NSString * const BASEURL_STRING_SEARCHTAGBASED =BASEURL @"QueztOnTagsBasis.php?";

NSString * const BASEURL_STRING_FAVOURITE   =BASEURL @"selectFavourite.php?";

NSString * const BASEURL_STRING_ANSWER   =BASEURL @"selectAnswer.php?";

NSString * const BASEURL_STRING_NOOFFOLLOWERS   =BASEURL @"totalFriendsOfUser.php?";
NSString * const BASEURL_STRING_CREATEFOLLOWERS   =BASEURL @"createFriends.php?";
NSString * const BASEURL_STRING_DELETEFOLLOWERS   =BASEURL @"unfriendUser.php?";
NSString * const BASEURL_STRING_CHEAKFOLLOWERS   =BASEURL @"checkFollowerOrNot.php?";

NSString * const BASEURL_STRING_OtherUserQuezt   =BASEURL @"requestQuestWithLimitUsingOtherUserSid.php?";

NSString * const BASEURL_STRING_TOTALQUESTIONPOSTEDBYUSER =BASEURL @"totalQuestionsPostedByUser.php?";

NSString * const BASEURL_STRING_TERMSANDCONDITION =BASEURL @"accessTermsAndConditions.php?";

NSString * const URL_NOTIFICATION =BASEURL @"saveNotificationStatus.php?";
NSString * const URL_READ_ALLNOTIFICATION =BASEURL @"markAllNotificationsAsRead.php?";
NSString * const URL_GETNOTIFICATION_STATUS =BASEURL @"accessNotificationButtonStatus.php?";

NSString * const URL_SAVEDEVICETOKEN =BASEURL @"saveToken.php?";

////////////////---------------(ImageDownloadUrl)--------------

NSString * const BASEURL_STRING_IMAGEDOWNLOADURL =BASEURL @"question_images/";
NSString * const BASEURL_STRING_PROFILEIMAGEDOWNLOADURL =BASEURL @"images/";

NSString * const URL_IMAGEDOWNLOAD_1X =BASEURL @"question_images/sid/micro_quality/";
NSString * const URL_IMAGEDOWNLOAD_2X =BASEURL @"question_images/sid/medium_quality/";
NSString * const URL_IMAGEDOWNLOAD_3X =BASEURL @"question_images/sid/high_quality/";


////----sharing-----
NSString * const FACEBOOKSHARING =BASEURL @"qid/";

NSString * const CREATESCREENSHOT =BASEURL  @"saveQuestionScreenShot.php?";





//---------Extra Globel Strings___________
NSString * const S_ID = @"sid";
NSString * const STATUS_CODE=@"status_code";
NSString * const STATUS_MSG=@"status_msg";
NSString * const APP_PLATEFORM=@"Ios";
NSString * const APP_VERSION=@"1.1";


NSString * const SOCIAL_TYPE = @"social_type";
NSString * const SOCIAL_TYPE_FB = @"Facebook";
NSString * const SOCIAL_TYPE_TW = @"Twitter";
NSString * const SOCIAL_TYPE_GP = @"Google Plus";
NSString * const SOCIAL_TYPE_Q = @"Quezt";

NSString * const WEBUSERTEXT = @"You can not see web Users Profile.";





///----------(No Of Quezt Data On Load)----------

int const QUEZTCELL_NO=10;

int const VOTERLIST_HEIGHT = 60;
int const VLVIEW_HEIGHT = 35;


@end
