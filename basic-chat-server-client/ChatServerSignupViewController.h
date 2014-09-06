//
//  ChatServerSignupViewController.h
//  basic-chat-server-client
//
//  Created by Darin Minamoto on 9/5/14.
//  Copyright (c) 2014 com.d_m. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatServerSignupViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *passwordReenterField;

@end
