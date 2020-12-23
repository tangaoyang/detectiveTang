//
//  DeleteViewController.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class Crime;

@protocol DeleteDelegate <NSObject>

- (void)deletepass1:(NSMutableArray *)nameArr pass2:(NSMutableArray *)ageArr pass3:(NSMutableArray *)classArr;

@end

@interface DeleteViewController : UIViewController
<
UITableViewDataSource,
UITableViewDelegate
>

@property UITextField *nameTextField;
@property UITableView *tableView;
@property NSMutableArray *nameArr;
@property NSMutableArray *ageArr;
@property NSMutableArray *classArr;
@property id <DeleteDelegate> deleteDelegate;

@end

NS_ASSUME_NONNULL_END
