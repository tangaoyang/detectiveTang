//
//  SortViewController.m
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/24.
//

#import "SortViewController.h"
#import "MainTableViewCell.h"

@interface SortViewController ()

@end

@implementation SortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *backImage = [UIImage imageNamed:@"背景17.jpg"];
    UIImageView *backImageView = [[UIImageView alloc] initWithImage:backImage];
    backImageView.frame = self.view.bounds;
    [self.view insertSubview:backImageView atIndex:0];
    
    self.countArray = [[NSMutableArray alloc] init];
    self.relationshipArray = [[NSMutableArray alloc] init];
    [_countArray addObject:@"10"];
    [_relationshipArray addObject:@"stanger"];
    
    self.tableView = [[UITableView alloc] init];
    _tableView.frame = self.view.bounds;
    [self.view addSubview:_tableView];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [UIColor clearColor];
    _tableView.tableFooterView = [[UIView alloc] init];
    [_tableView registerClass:[MainTableViewCell class] forCellReuseIdentifier:@"111"];
    
    UIButton *sortButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:sortButton];
    sortButton.frame = CGRectMake(100, 500, 250, 50);
    [sortButton setTitle:@"back" forState:UIControlStateNormal];
    sortButton.tintColor = [UIColor whiteColor];
    sortButton.titleLabel.font = [UIFont systemFontOfSize:20];
    [sortButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchDown];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
    
    [cell give:indexPath Arr1:_countArray Arr2:_relationshipArray];
    
    return cell;
    
}

- (void)back {
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _countArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
