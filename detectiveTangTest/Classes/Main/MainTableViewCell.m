//
//  MainTableViewCell.m
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import "MainTableViewCell.h"
#import "Crime.h"
#import <Masonry.h>

@implementation MainTableViewCell

- (void)give:(NSIndexPath *)indexPath Arr1:(NSMutableArray *)nameArr Arr2:(NSMutableArray *)ageArr Arr3:(NSMutableArray *)classArr {
    self.nameLabel.text = nameArr[indexPath.row];
    self.ageLabel.text = ageArr[indexPath.row];
    self.classLabel.text = classArr[indexPath.row];
    self.backgroundColor = [UIColor clearColor];
}

- (void)give:(NSIndexPath *)indexPath Array:(NSMutableArray *) array {
    Crime *crime = array[indexPath.row];
    self.nameLabel.text = [NSString stringWithFormat:@"%ld", crime.RecoreId];
    self.ageLabel.text = crime.Relationship;
    self.classLabel.text = crime.City;
    self.backgroundColor = [UIColor clearColor];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    _classLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_classLabel];
    
    _ageLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_ageLabel];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(20);
        make.width.equalTo(@60);
        make.height.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(25);
    }];
    _nameLabel.font = [UIFont systemFontOfSize:20];
    _nameLabel.textAlignment = NSTextAlignmentCenter;
    _nameLabel.textColor = [UIColor whiteColor];
    
    [_classLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_nameLabel.mas_right).offset(20);
            make.width.equalTo(@100);
            make.height.mas_equalTo(_nameLabel);
            make.top.mas_equalTo(_nameLabel);
    }];
    _classLabel.font = [UIFont systemFontOfSize:20];
    _classLabel.textAlignment = NSTextAlignmentCenter;
    _classLabel.textColor = [UIColor whiteColor];
    
    [_ageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_classLabel.mas_right).offset(20);
            make.width.equalTo(@200);
            make.height.mas_equalTo(_nameLabel);
            make.top.mas_equalTo(_nameLabel);
    }];
    _ageLabel.font = [UIFont systemFontOfSize:20];
    _ageLabel.textAlignment = NSTextAlignmentCenter;
    _ageLabel.textColor = [UIColor whiteColor];
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
@end
