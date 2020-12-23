//
//  ChangeViewController.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <UIKit/UIKit.h>
#import "ChangeSonViewController.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ChangeDelegate <NSObject>

- (void)changePass1:(NSMutableArray *)nameArr Pass2:(NSMutableArray *)ageArr Pass3:(NSMutableArray *)classArr;

@end

@interface ChangeViewController : UIViewController
<
ChangeSonDelegate,
UITableViewDataSource,
UITableViewDelegate
>

@property UITextField *nameTextField;
@property UITableView *tableView;
@property NSMutableArray *nameArr;
@property NSMutableArray *ageArr;
@property NSMutableArray *classArr;
@property id <ChangeDelegate> changeDelegate;

@end

NS_ASSUME_NONNULL_END
