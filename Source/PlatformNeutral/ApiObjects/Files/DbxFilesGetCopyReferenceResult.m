///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesGetCopyReferenceResult.h"
#import "DbxFilesMetadata.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesGetCopyReferenceResult 

- (instancetype)initWithMetadata:(DbxFilesMetadata *)metadata dCopyReference:(NSString *)dCopyReference expires:(NSDate *)expires {

    self = [super init];
    if (self != nil) {
        _metadata = metadata;
        _dCopyReference = dCopyReference;
        _expires = expires;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesGetCopyReferenceResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesGetCopyReferenceResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesGetCopyReferenceResultSerializer serialize:self] description];
}

@end


@implementation DbxFilesGetCopyReferenceResultSerializer 

+ (NSDictionary *)serialize:(DbxFilesGetCopyReferenceResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"metadata"] = [DbxFilesMetadataSerializer serialize:valueObj.metadata];
    jsonDict[@"copy_reference"] = valueObj.dCopyReference;
    jsonDict[@"expires"] = [DbxNSDateSerializer serialize:valueObj.expires dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];

    return jsonDict;
}

+ (DbxFilesGetCopyReferenceResult *)deserialize:(NSDictionary *)valueDict {
    DbxFilesMetadata *metadata = [DbxFilesMetadataSerializer deserialize:valueDict[@"metadata"]];
    NSString *dCopyReference = valueDict[@"copy_reference"];
    NSDate *expires = [DbxNSDateSerializer deserialize:valueDict[@"expires"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];

    return [[DbxFilesGetCopyReferenceResult alloc] initWithMetadata:metadata dCopyReference:dCopyReference expires:expires];
}

@end
