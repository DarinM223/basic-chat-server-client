//
//  ChatServerSignupViewController.m
//  basic-chat-server-client
//
//  Created by Darin Minamoto on 9/5/14.
//  Copyright (c) 2014 com.d_m. All rights reserved.
//

#import "ChatServerSignupViewController.h"

@interface ChatServerSignupViewController ()

@end

@implementation ChatServerSignupViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// hides keyboard when return is pressed
-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // sets text fields so that they show done instead of return in keyboard
    _usernameField.returnKeyType = UIReturnKeyDone;
    _passwordField.returnKeyType = UIReturnKeyDone;
    _passwordReenterField.returnKeyType = UIReturnKeyDone;
    
    // sets keyboard events to itself to catch return key
    [_usernameField setDelegate:self];
    [_passwordField setDelegate:self];
    [_passwordReenterField setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClicked:(id)sender {
    if (self.usernameField.text.length > 0 && self.passwordField.text.length > 0 && self.passwordReenterField.text.length > 0) {
        if ([self.passwordField.text isEqualToString:self.passwordReenterField.text]) {
        } else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Passwords different" message:@"The passwords are not the same" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
            [alert show];
        }
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Fields empty" message:@"Some fields are empty" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
