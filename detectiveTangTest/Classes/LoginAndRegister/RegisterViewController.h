//
//  RegisterViewController.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RegisterViewControllerDelegate <NSObject>

- (void)pass1:(NSString *)str1 pass2:(NSString *)str2;

@end

@interface RegisterViewController : UIViewController
<
UITextFieldDelegate
>

@property (nonatomic, weak) id <RegisterViewControllerDelegate> regiserViewControllerDelegate;

@property UITextField *messTextField;
@property UITextField *userTextField;
@property UITextField *passTextField;
@property NSMutableArray *RuserArr;
@property NSMutableArray *RpassArr;

@end

NS_ASSUME_NONNULL_END
