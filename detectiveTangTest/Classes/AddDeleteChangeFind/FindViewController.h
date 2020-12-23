//
//  FindViewController.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FindViewController : UIViewController
<
UITableViewDataSource,
UITableViewDelegate
>

@property UITextField *nameTextField;
@property UITableView *tableView;
@property UITextField *classTextField;
@property UITextField *ageTextField;
@property NSMutableArray *nameArr;
@property NSMutableArray *ageArr;
@property NSMutableArray *classArr;
@property NSMutableArray *snameArr;
@property NSMutableArray *sageArr;
@property NSMutableArray *sclassArr;

@end

NS_ASSUME_NONNULL_END
