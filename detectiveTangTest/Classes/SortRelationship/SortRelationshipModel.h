//
//  SortRelationshipModel.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/24.
//

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol RelationshipModel <NSObject>

@end

@interface RelationshipModel : JSONModel

@property (nonatomic, copy) NSString *count;
@property (nonatomic, copy) NSString *relationship;

@end

@interface SortRelationshipModel : JSONModel

@property (nonatomic, copy) NSArray<RelationshipModel> *sortRelation;

@end

NS_ASSUME_NONNULL_END
