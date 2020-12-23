//
//  LoginViewController.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController
<
UITextFieldDelegate,
RegisterViewControllerDelegate
>

@property UITextField *userTextField;
@property UITextField *passTextField;
@property UIButton *loadButton;
@property UIButton *registerButton;
@end

NS_ASSUME_NONNULL_END
