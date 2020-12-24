//
//  SortRelationshipModel.m
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/24.
//

#import "SortRelationshipModel.h"

@implementation RelationshipModel

+(BOOL)propertyIsOptional:(NSString *)propertyName{
    return  YES;
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:
            @{
              @"count":@"count(*)"
              }];
}

@end

@implementation SortRelationshipModel

+(BOOL)propertyIsOptional:(NSString *)propertyName{
    return  YES;
}

@end
