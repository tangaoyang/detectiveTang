//
//  FindModel.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ACrimeModel : JSONModel

@property (nonatomic, assign) NSInteger *recoreId;
@property (nonatomic, copy) NSString *agencyCode;
@property (nonatomic, copy) NSString *agencyName;
@property (nonatomic, copy) NSString *agencyType;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, assign) NSInteger *year;
@property (nonatomic, copy) NSString *month;
@property (nonatomic, assign) NSInteger *incident;
@property (nonatomic, copy) NSString *crimeType;
@property (nonatomic, copy) NSString *crimeSolved;
@property (nonatomic, copy) NSString *victimSex;
@property (nonatomic, assign) NSInteger *victimAge;
@property (nonatomic, copy) NSString *victimRace;
@property (nonatomic, copy) NSString *victimEthnicity;
@property (nonatomic, copy) NSString *perpetratorSex;
@property (nonatomic, assign) NSInteger *perpetratorAge;
@property (nonatomic, copy) NSString *perpetratorRace;
@property (nonatomic, copy) NSString *perpetratorEthnicity;
@property (nonatomic, copy) NSString *relationship;
@property (nonatomic, copy) NSString *weapon;
@property (nonatomic, assign) NSInteger *victimCount;
@property (nonatomic, assign) NSInteger *perpetratorCount;
@property (nonatomic, copy) NSString *recordSource;


@end

@interface FindModel : JSONModel

@property (nonatomic, copy) NSArray *crimeArray;

@end

NS_ASSUME_NONNULL_END
