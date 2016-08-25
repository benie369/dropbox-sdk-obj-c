///
/// Auto-generated by Stone, do not modify.
///

#import "DbxAsyncPollArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxAsyncPollArg 

- (instancetype)initWithAsyncJobId:(NSString *)asyncJobId {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:nil](asyncJobId);

    self = [super init];
    if (self != nil) {
        _asyncJobId = asyncJobId;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxAsyncPollArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxAsyncPollArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxAsyncPollArgSerializer serialize:self] description];
}

@end


@implementation DbxAsyncPollArgSerializer 

+ (NSDictionary *)serialize:(DbxAsyncPollArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"async_job_id"] = valueObj.asyncJobId;

    return jsonDict;
}

+ (DbxAsyncPollArg *)deserialize:(NSDictionary *)valueDict {
    NSString *asyncJobId = valueDict[@"async_job_id"];

    return [[DbxAsyncPollArg alloc] initWithAsyncJobId:asyncJobId];
}

@end
