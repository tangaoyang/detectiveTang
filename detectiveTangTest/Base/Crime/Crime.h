//
//  Crime.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Crime : NSObject


@property (nonatomic, copy) NSString *recordID;
@property (nonatomic, copy) NSString *agencyCode;
@property (nonatomic, copy) NSString *agencyName;
@property (nonatomic, copy) NSString *agencyType;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *year;
@property (nonatomic, copy) NSString *month;
@property (nonatomic, copy) NSString *incident;
@property (nonatomic, copy) NSString *crimeType;
@property (nonatomic, copy) NSString *crimeSolved;
@property (nonatomic, copy) NSString *victimSex;
@property (nonatomic, copy) NSString *victimAge;
@property (nonatomic, copy) NSString *victimRace;
@property (nonatomic, copy) NSString *victimEthnicity;
@property (nonatomic, copy) NSString *perpetratorSex;
@property (nonatomic, copy) NSString *perpetratorAge;
@property (nonatomic, copy) NSString *perpetratorRace;
@property (nonatomic, copy) NSString *perpetratorEthnicity;
@property (nonatomic, copy) NSString *relationship;
@property (nonatomic, copy) NSString *weapon;
@property (nonatomic, copy) NSString *victimCount;
@property (nonatomic, copy) NSString *perpetratorCount;
@property (nonatomic, copy) NSString *recordSource;

@end

NS_ASSUME_NONNULL_END
