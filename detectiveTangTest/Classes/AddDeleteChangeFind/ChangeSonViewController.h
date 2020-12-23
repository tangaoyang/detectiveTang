//
//  ChangeSonViewController.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol ChangeSonDelegate <NSObject>

- (void)changeSonPass1:(NSMutableArray *)nameArr Pass2:(NSMutableArray *)ageArr Pass3:(NSMutableArray *)classArr;

@end

@interface ChangeSonViewController : UIViewController
<
UITextFieldDelegate
>

@property UITextField *nameTextField;
@property UITextField *classTextField;
@property UITextField *ageTextField;
@property NSMutableArray *nameArr;
@property NSMutableArray *ageArr;
@property NSMutableArray *classArr;
@property NSString *str;
@property id <ChangeSonDelegate> changeSonDelegate;

@end

NS_ASSUME_NONNULL_END
