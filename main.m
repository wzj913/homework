#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@interface Address : NSObject
@property(nonatomic,copy)NSString *country;
@property(nonatomic,copy)NSString *province;
@property(nonatomic,copy)NSString *city;
@property(nonatomic,copy)NSString *detail;
@property(nonatomic,copy)CLLocation *location;
@end


@interface Person : NSObject
@property(nonatomic,readonly)NSNumber *idNumber;
@property(nonatomic,strong)Person *mother;
@property(nonatomic,strong)Person *father;
@property(nonatomic,strong)NSDate *birthday;
@property(nonatomic,strong)Address *address;
@property(nonatomic,readonly)NSDate *registerDate;
@property(nonatomic,assign,readonly)NSInteger age;

-(instancetype)initWithName:(NSString *)name address:(Address *)address birthday:(NSDate*)birthday;
-(void)bindMother:(Person *)mother;
-(void)bindMother:(Person *)father;
@end

NS_ASSUME_NONNULL_END

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Order : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,readonly)NSNumber *Takeoff;
@property(nonatomic,readonly)NSNumber *Arival;
@property(nonatomic,readonly)NSNumber *money;
@end

@interface Passenger : Person
@property(nonatomic,readonly)Bool *age;
@property(nonatomic,readonly)NSArray *History order = @[@1,@2,@3];
@property(nonatomic,readonly)NSArray *Unused order = @[@1,@2,@3];

@end
NS_ASSUME_NONNULL_END

