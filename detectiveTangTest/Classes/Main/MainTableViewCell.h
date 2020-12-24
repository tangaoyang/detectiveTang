//
//  MainTableViewCell.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainTableViewCell : UITableViewCell

@property UILabel *nameLabel;
@property UILabel *classLabel;
@property UILabel *ageLabel;

- (void)give:(NSIndexPath *)indexPath Arr1:(NSMutableArray *)nameArr Arr2:(NSMutableArray *)ageArr Arr3:(NSMutableArray *)classArr;
- (void)give:(NSIndexPath *)indexPath Array:(NSMutableArray *) array;
- (void)give:(NSIndexPath *)indexPath Arr1:(NSMutableArray *)nameArr Arr2:(NSMutableArray *)ageArr;

@end

NS_ASSUME_NONNULL_END
