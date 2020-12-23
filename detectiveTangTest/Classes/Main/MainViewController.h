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

@end

NS_ASSUME_NONNULL_END
