///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesUploadSessionStartResult.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesUploadSessionStartResult 

- (instancetype)initWithSessionId:(NSString *)sessionId {

    self = [super init];
    if (self != nil) {
        _sessionId = sessionId;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesUploadSessionStartResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesUploadSessionStartResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesUploadSessionStartResultSerializer serialize:self] description];
}

@end


@implementation DbxFilesUploadSessionStartResultSerializer 

+ (NSDictionary *)serialize:(DbxFilesUploadSessionStartResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"session_id"] = valueObj.sessionId;

    return jsonDict;
}

+ (DbxFilesUploadSessionStartResult *)deserialize:(NSDictionary *)valueDict {
    NSString *sessionId = valueDict[@"session_id"];

    return [[DbxFilesUploadSessionStartResult alloc] initWithSessionId:sessionId];
}

@end
