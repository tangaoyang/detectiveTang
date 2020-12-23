//
//  FindSonViewController.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FindSonViewController : UIViewController

<
UITableViewDelegate,
UITableViewDataSource
>

@property UILabel *label1;
@property UITableView *tableView;
@property NSMutableArray *nameArr;
@property NSMutableArray *ageArr;
@property NSMutableArray *classArr;

@end

NS_ASSUME_NONNULL_END
