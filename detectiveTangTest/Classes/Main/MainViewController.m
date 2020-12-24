//
//  MainViewController.m
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import "MainViewController.h"
#import "MainTableViewCell.h"
#import "Crime.h"
#import "FindModel.h"
#import "BaseManager.h"
#import "SortViewController.h"
#import "SortRelationshipModel.h"
#import "StringModel.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *backImage = [UIImage imageNamed:@"背景10.jpg"];
    UIImageView *backImageView = [[UIImageView alloc] initWithImage:backImage];
    backImageView.frame = self.view.bounds;
    [self.view insertSubview:backImageView atIndex:0];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 520) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [UIColor clearColor];
    _tableView.tableFooterView = [[UIView alloc] init];
    [_tableView registerClass:[MainTableViewCell class] forCellReuseIdentifier:@"111"];
    
    UIButton *addButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:addButton];
    addButton.frame = CGRectMake(100, 570, 100, 50);
    [addButton setTitle:@"add" forState:UIControlStateNormal];
    addButton.tintColor = [UIColor whiteColor];
    addButton.titleLabel.font = [UIFont systemFontOfSize:30];
    [addButton addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchDown];
    
    UIButton *deleteButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:deleteButton];
    deleteButton.frame = CGRectMake(250, 570, 100, 50);
    [deleteButton setTitle:@"delete" forState:UIControlStateNormal];
    deleteButton.tintColor = [UIColor whiteColor];
    deleteButton.titleLabel.font = [UIFont systemFontOfSize:30];
    [deleteButton addTarget:self action:@selector(delete) forControlEvents:UIControlEventTouchDown];
    
    UIButton *changeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:changeButton];
    changeButton.frame = CGRectMake(100, 640, 100, 50);
    [changeButton setTitle:@"change" forState:UIControlStateNormal];
    changeButton.tintColor = [UIColor whiteColor];
    changeButton.titleLabel.font = [UIFont systemFontOfSize:30];
    [changeButton addTarget:self action:@selector(change) forControlEvents:UIControlEventTouchDown];
    
    UIButton *findButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:findButton];
    findButton.frame = CGRectMake(250, 640, 100, 50);
    [findButton setTitle:@"find" forState:UIControlStateNormal];
    findButton.tintColor = [UIColor whiteColor];
    findButton.titleLabel.font = [UIFont systemFontOfSize:30];
    [findButton addTarget:self action:@selector(find) forControlEvents:UIControlEventTouchDown];
    
    UIButton *aprioriButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:aprioriButton];
    aprioriButton.frame = CGRectMake(0, 730, 400, 50);
    [aprioriButton setTitle:@"aprioriToFindRelationshipAndCity" forState:UIControlStateNormal];
    aprioriButton.tintColor = [UIColor whiteColor];
    aprioriButton.titleLabel.font = [UIFont systemFontOfSize:20];
    [aprioriButton addTarget:self action:@selector(exit) forControlEvents:UIControlEventTouchDown];
    
    UIButton *sortButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:sortButton];
    sortButton.frame = CGRectMake(100, 500, 250, 50);
    [sortButton setTitle:@"findRelationshipMore" forState:UIControlStateNormal];
    sortButton.tintColor = [UIColor whiteColor];
    sortButton.titleLabel.font = [UIFont systemFontOfSize:20];
    [sortButton addTarget:self action:@selector(sort) forControlEvents:UIControlEventTouchDown];
    
}

- (void)sort {
    
    SortViewController *sort = [[SortViewController alloc] init];
    sort.modalPresentationStyle = UIModalPresentationFullScreen;
    [[BaseManager sharedManager] getSortMessage:^(SortRelationshipModel * _Nonnull sortRelationshipModel) {
        [sort.countArray removeAllObjects];
        [sort.relationshipArray removeAllObjects];
            for (int i = 0; i < sortRelationshipModel.sortRelation.count; i++) {
                RelationshipModel *relation = sortRelationshipModel.sortRelation[i];
                [sort.countArray addObject:relation.count];
                [sort.relationshipArray addObject:relation.relationship];
            }
            [sort.tableView reloadData];
        } error:^(NSError * _Nonnull error) {
            NSLog(@"getSortMessage error = %@", error);
        }];
    [self presentViewController:sort animated:NO completion:nil];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
    
    [cell give:indexPath Arr1:_nameArray Arr2:_ageArray Arr3:_classArray];
    
    return cell;
    
}

- (void)exit{
    
    __block NSString *max;
    [[BaseManager sharedManager] getAprioriMessage:^(StringModel * _Nonnull stringModel) {
            NSLog(@"good");
            max = stringModel.Max;
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"aprioriToFindRelationshipAndCity" message:[NSString stringWithFormat:@"%@", max] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"sure" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:action];
//        dispatch_sync(dispatch_get_main_queue(), ^{
            [self presentViewController:alert animated:NO completion:nil];
//        });
        } error:^(NSError * _Nonnull error) {
            NSLog(@"getAprioriMessage error = %@", error);
        }];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _nameArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

- (void)add {
    
    AddViewController *addRoot = [[AddViewController alloc] init];
    addRoot.modalPresentationStyle = UIModalPresentationFullScreen;
    addRoot.nameArr = _nameArray;
    addRoot.ageArr = _ageArray;
    addRoot.classArr = _classArray;
    addRoot.addDelegate = self;
    [self presentViewController:addRoot animated:NO completion:nil];
    
}

- (void)delete {
    
    DeleteViewController *deleteRoot = [[DeleteViewController alloc] init];
    deleteRoot.modalPresentationStyle = UIModalPresentationFullScreen;
    deleteRoot.nameArr = _nameArray;
    deleteRoot.ageArr = _ageArray;
    deleteRoot.classArr = _classArray;
    deleteRoot.deleteDelegate = self;
    [self presentViewController:deleteRoot animated:NO completion:nil];
    
}

- (void)change{
    
    ChangeViewController *changeRoot = [[ChangeViewController alloc] init];
    changeRoot.modalPresentationStyle = UIModalPresentationFullScreen;
    changeRoot.nameArr = _nameArray;
    changeRoot.ageArr = _ageArray;
    changeRoot.classArr = _classArray;
    changeRoot.changeDelegate = self;
    [self presentViewController:changeRoot animated:NO completion:nil];
    
}

- (void)find{
    
    FindViewController *findRoot = [[FindViewController alloc] init];
    findRoot.modalPresentationStyle = UIModalPresentationFullScreen;
    findRoot.nameArr = _nameArray;
    findRoot.ageArr = _ageArray;
    findRoot.classArr = _classArray;
    [self presentViewController:findRoot animated:NO completion:nil];
    
}

- (void)pass:(Crime *)crime {
    
    [_nameArray addObject:crime.recordID];
    [_ageArray addObject:crime.relationship];
    [_classArray addObject:crime.city];
    [_tableView reloadData];
    
}

- (void)deletepass1:(NSMutableArray *)nameArr pass2:(NSMutableArray *)ageArr pass3:(NSMutableArray *)classArr{
    
    _nameArray = nameArr;
    _ageArray = ageArr;
    _classArray = classArr;
    [_tableView reloadData];
    
}

- (void)changePass1:(NSMutableArray *)nameArr Pass2:(NSMutableArray *)ageArr Pass3:(NSMutableArray *)classArr{
    
    _nameArray = nameArr;
    _ageArray = ageArr;
    _classArray = classArr;
    [_tableView reloadData];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
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
