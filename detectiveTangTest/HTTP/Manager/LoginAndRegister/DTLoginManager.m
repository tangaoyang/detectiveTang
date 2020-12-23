//
//  DTLoginManager.m
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import "DTLoginManager.h"
#import "LoginModel.h"
#import <AFNetworking.h>
#define HTTP @"http://118.31.12.175:8081/"

@implementation DTLoginManager

static DTLoginManager *manager = nil;

+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!manager) {
            manager = [[DTLoginManager alloc] init];
        }
    });
    return manager;
}

- (void)getLoginMessage:(LoginModelBlock)successBlock error:(ErrorBlock)errorBlock account:(NSString *)account password:(NSString *)password {
    AFHTTPSessionManager *httpManager = [AFHTTPSessionManager manager];
    NSString *sureURLStr = [NSString stringWithFormat:@"%@user/login.do?accountNumber=%@&password=%@", HTTP, account, password];
    [httpManager POST:sureURLStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        LoginModel *loginModel = [[LoginModel alloc] initWithDictionary:responseObject error:nil];
        successBlock(loginModel);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        errorBlock(error);
    }];
}

@end
