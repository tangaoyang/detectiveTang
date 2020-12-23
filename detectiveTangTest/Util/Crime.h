//
//  Crime.h
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Crime : NSObject

@property (nonatomic, assign) NSInteger *RecoreId;
@property (nonatomic, copy) NSString *AgencyCode;
@property (nonatomic, copy) NSString *AgencyName;
@property (nonatomic, copy) NSString *AgencyType;
@property (nonatomic, copy) NSString *City;
@property (nonatomic, copy) NSString *State;
@property (nonatomic, assign) NSInteger *Year;
@property (nonatomic, copy) NSString *Month;
@property (nonatomic, assign) NSInteger *Incident;
@property (nonatomic, copy) NSString *CrimeType;
@property (nonatomic, copy) NSString *CrimeSolved;
@property (nonatomic, copy) NSString *VictimSex;
@property (nonatomic, assign) NSInteger *VictimAge;
@property (nonatomic, copy) NSString *VictimRace;
@property (nonatomic, copy) NSString *VictimEthnicity;
@property (nonatomic, copy) NSString *PerpetratorSex;
@property (nonatomic, assign) NSInteger *PerpetratorAge;
@property (nonatomic, copy) NSString *PerpetratorRace;
@property (nonatomic, copy) NSString *PerpetratorEthnicity;
@property (nonatomic, copy) NSString *Relationship;
@property (nonatomic, copy) NSString *Weapon;
@property (nonatomic, assign) NSInteger *VictimCount;
@property (nonatomic, assign) NSInteger *PerpetratorCount;
@property (nonatomic, copy) NSString *RecordSource;

@end

NS_ASSUME_NONNULL_END
