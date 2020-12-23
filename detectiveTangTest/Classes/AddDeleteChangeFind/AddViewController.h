//
//  AddViewController.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class Crime;
@protocol AddDelegate <NSObject>

- (void)pass: (Crime *)crime;

@end

@interface AddViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>

@property UITextField *nameTextField;
@property UITextField *classTextField;
@property UITextField *ageTextField;
@property NSMutableArray *nameArr;
@property NSMutableArray *ageArr;
@property NSMutableArray *classArr;
@property UITableView *tableView;
@property id <AddDelegate> addDelegate;

@end

NS_ASSUME_NONNULL_END
