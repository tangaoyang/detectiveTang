//
//  BaseManager.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class FindModel;

@interface BaseManager : NSObject

typedef void (^ErrorBlock)(NSError *error);
typedef void (^FindModelBlock)(FindModel * _Nullable findModel);

+ (instancetype)sharedManager;
- (void)getCrimeMessage:(FindModelBlock)successBlock error:(ErrorBlock)errorBlock;
- (void)findCrimeMessage:(FindModelBlock)successBlock error:(ErrorBlock)errorBlock recordID:(NSInteger) ID city:(NSString *) city relationship:(NSString *) relationship;
- (void)deleteCrimeMessage:(FindModelBlock)successBlock error:(ErrorBlock)errorBlock recordID:(NSInteger)ID;

@end

NS_ASSUME_NONNULL_END
