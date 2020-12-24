//
//  MainViewController.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <UIKit/UIKit.h>
#import "AddViewController.h"
#import "DeleteViewController.h"
#import "ChangeViewController.h"
#import "FindViewController.h"

NS_ASSUME_NONNULL_BEGIN

@class Crime;
@class FindModel;
@class SortViewController;

@interface MainViewController : UIViewController
<
AddDelegate,
DeleteDelegate,
ChangeDelegate,
UITableViewDelegate,
UITableViewDataSource
>

@property UITableView *tableView;
@property NSMutableArray *crimeArray;
@property NSMutableArray *nameArray;
@property NSMutableArray *ageArray;
@property NSMutableArray *classArray;

@end

NS_ASSUME_NONNULL_END
