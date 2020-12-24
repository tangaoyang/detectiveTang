//
//  BaseManager.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class FindModel;
@class SortRelationshipModel;
@class StringModel;

@interface BaseManager : NSObject

typedef void (^ErrorBlock)(NSError *error);
typedef void (^FindModelBlock)(FindModel *findModel);
typedef void (^SortRelationshipModelBlock)(SortRelationshipModel *sortRelationshipModel);
typedef void (^StringBlock)(StringModel *stringModel);


+ (instancetype)sharedManager;
- (void)getCrimeMessage:(FindModelBlock)successBlock error:(ErrorBlock)errorBlock;
- (void)findCrimeMessage:(FindModelBlock)successBlock error:(ErrorBlock)errorBlock recordID:(NSInteger) ID city:(NSString *) city relationship:(NSString *) relationship;
- (void)deleteCrimeMessage:(FindModelBlock)successBlock error:(ErrorBlock)errorBlock recordID:(NSInteger)ID;
- (void)getSortMessage:(SortRelationshipModelBlock)successBlock error:(ErrorBlock)errorBlock;
- (void)getAprioriMessage:(StringBlock)successBlock error:(ErrorBlock)errorBlock;

@end

NS_ASSUME_NONNULL_END
