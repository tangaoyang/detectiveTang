//
//  BaseManager.m
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import "BaseManager.h"
#import <AFNetworking.h>
#import "FindModel.h"
#import "SortRelationshipModel.h"
#import "StringModel.h"

#define HTTP @"http://127.0.0.1:8080"

@implementation BaseManager

static BaseManager *manager = nil;

+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!manager) {
            manager = [[BaseManager alloc] init];
        }
    });
    return manager;
}

- (void)getCrimeMessage:(FindModelBlock)successBlock error:(ErrorBlock)errorBlock {
    AFHTTPSessionManager *httpManager = [AFHTTPSessionManager manager];
    NSString *sureURLStr = [NSString stringWithFormat:@"%@/CrimeController/query", HTTP];
    [httpManager GET:sureURLStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * _Nullable responseObject) {
        FindModel *findModel = [[FindModel alloc] initWithDictionary:responseObject error:nil];
        successBlock(findModel);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        errorBlock(error);
    }];
}

- (void)findCrimeMessage:(FindModelBlock)successBlock error:(ErrorBlock)errorBlock recordID:(NSInteger)ID city:(NSString *)city relationship:(NSString *)relationship {
    AFHTTPSessionManager *httpManager = [AFHTTPSessionManager manager];
    NSString *sureURLStr = [NSString stringWithFormat:@"%@/CrimeController/query", HTTP];
    [httpManager POST:sureURLStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        FindModel *findModel = [[FindModel alloc] initWithDictionary:responseObject error:nil];
        successBlock(findModel);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        errorBlock(error);
    }];
}

- (void)deleteCrimeMessage:(FindModelBlock)successBlock error:(ErrorBlock)errorBlock recordID:(NSInteger)ID {
    AFHTTPSessionManager *httpManager = [AFHTTPSessionManager manager];
    httpManager.requestSerializer = [AFHTTPRequestSerializer serializer];
    httpManager.responseSerializer.acceptableContentTypes=[NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", @"text/plain", nil];

    NSString *sureURLStr = [NSString stringWithFormat:@"%@/delete?recordID=%li", HTTP, (long)ID];
    [httpManager POST:sureURLStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        FindModel *findModel = [[FindModel alloc] initWithDictionary:responseObject error:nil];
        successBlock(findModel);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        errorBlock(error);
    }];
}

- (void)getSortMessage:(SortRelationshipModelBlock)successBlock error:(ErrorBlock)errorBlock {
    AFHTTPSessionManager *httpManager = [AFHTTPSessionManager manager];
    NSString *sureURLStr = [NSString stringWithFormat:@"%@/CrimeController/sortRelation", HTTP];
    [httpManager GET:sureURLStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        SortRelationshipModel *sortRelationshipModel = [[SortRelationshipModel alloc] initWithDictionary:responseObject error:nil];
        NSLog(@"%@", responseObject);
        successBlock(sortRelationshipModel);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        errorBlock(error);
    }];
}

- (void)getAprioriMessage:(StringBlock)successBlock error:(ErrorBlock)errorBlock {
    AFHTTPSessionManager *httpManager = [AFHTTPSessionManager manager];
    NSString *sureURLStr = [NSString stringWithFormat:@"%@/CrimeController/apriori", HTTP];
    [httpManager GET:sureURLStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        StringModel *stringModel = [[StringModel alloc] initWithDictionary:responseObject error:nil];
        successBlock(stringModel);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        errorBlock(error);
    }];
}

@end
