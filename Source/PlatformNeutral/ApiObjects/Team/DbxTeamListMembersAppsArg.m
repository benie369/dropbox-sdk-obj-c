///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamListMembersAppsArg.h"

@implementation DbxTeamListMembersAppsArg 

- (instancetype)initWithCursor:(NSString *)cursor {

    self = [super init];
    if (self != nil) {
        _cursor = cursor;
    }
    return self;
}

- (instancetype)init {
    return [self initWithCursor:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamListMembersAppsArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamListMembersAppsArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamListMembersAppsArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamListMembersAppsArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamListMembersAppsArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if (valueObj.cursor) {
        jsonDict[@"cursor"] = valueObj.cursor;
    }

    return jsonDict;
}

+ (DbxTeamListMembersAppsArg *)deserialize:(NSDictionary *)valueDict {
    NSString *cursor = valueDict[@"cursor"] ? valueDict[@"cursor"] : nil;

    return [[DbxTeamListMembersAppsArg alloc] initWithCursor:cursor];
}

@end
