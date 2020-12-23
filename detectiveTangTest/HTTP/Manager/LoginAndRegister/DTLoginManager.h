//
//  DTLoginManager.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <Foundation/Foundation.h>

@class LoginModel;
NS_ASSUME_NONNULL_BEGIN

typedef void (^ErrorBlock)(NSError *error);
typedef void (^LoginModelBlock)(LoginModel *loginModel);

@interface DTLoginManager : NSObject

+ (instancetype)sharedManager;
- (void)getLoginMessage:(LoginModelBlock)successBlock error:(ErrorBlock)errorBlock account:(NSString *)account password:(NSString *)password;

@end

NS_ASSUME_NONNULL_END
