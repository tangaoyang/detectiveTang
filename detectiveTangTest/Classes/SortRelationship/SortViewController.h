//
//  SortViewController.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SortViewController : UIViewController
<UITableViewDataSource,
UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *relationshipArray;
@property (nonatomic, strong) NSMutableArray *countArray;

@end

NS_ASSUME_NONNULL_END
