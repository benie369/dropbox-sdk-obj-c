///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingAclUpdatePolicy.h"
#import "DbxSharingMemberPolicy.h"
#import "DbxSharingShareFolderArg.h"
#import "DbxSharingSharedLinkPolicy.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingShareFolderArg 

- (instancetype)initWithPath:(NSString *)path memberPolicy:(DbxSharingMemberPolicy *)memberPolicy aclUpdatePolicy:(DbxSharingAclUpdatePolicy *)aclUpdatePolicy sharedLinkPolicy:(DbxSharingSharedLinkPolicy *)sharedLinkPolicy forceAsync:(NSNumber *)forceAsync {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"/(.|[\\r\\n])*"](path);

    self = [super init];
    if (self != nil) {
        _path = path;
        _memberPolicy = memberPolicy ?: [[DbxSharingMemberPolicy alloc] initWithAnyone];
        _aclUpdatePolicy = aclUpdatePolicy ?: [[DbxSharingAclUpdatePolicy alloc] initWithOwner];
        _sharedLinkPolicy = sharedLinkPolicy ?: [[DbxSharingSharedLinkPolicy alloc] initWithAnyone];
        _forceAsync = forceAsync ?: @NO;
    }
    return self;
}

- (instancetype)initWithPath:(NSString *)path {
    return [self initWithPath:path memberPolicy:nil aclUpdatePolicy:nil sharedLinkPolicy:nil forceAsync:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingShareFolderArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingShareFolderArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingShareFolderArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingShareFolderArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingShareFolderArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = valueObj.path;
    jsonDict[@"member_policy"] = [DbxSharingMemberPolicySerializer serialize:valueObj.memberPolicy];
    jsonDict[@"acl_update_policy"] = [DbxSharingAclUpdatePolicySerializer serialize:valueObj.aclUpdatePolicy];
    jsonDict[@"shared_link_policy"] = [DbxSharingSharedLinkPolicySerializer serialize:valueObj.sharedLinkPolicy];
    jsonDict[@"force_async"] = valueObj.forceAsync;

    return jsonDict;
}

+ (DbxSharingShareFolderArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = valueDict[@"path"];
    DbxSharingMemberPolicy *memberPolicy = [DbxSharingMemberPolicySerializer deserialize:valueDict[@"member_policy"]];
    DbxSharingAclUpdatePolicy *aclUpdatePolicy = [DbxSharingAclUpdatePolicySerializer deserialize:valueDict[@"acl_update_policy"]];
    DbxSharingSharedLinkPolicy *sharedLinkPolicy = [DbxSharingSharedLinkPolicySerializer deserialize:valueDict[@"shared_link_policy"]];
    NSNumber *forceAsync = valueDict[@"force_async"];

    return [[DbxSharingShareFolderArg alloc] initWithPath:path memberPolicy:memberPolicy aclUpdatePolicy:aclUpdatePolicy sharedLinkPolicy:sharedLinkPolicy forceAsync:forceAsync];
}

@end
