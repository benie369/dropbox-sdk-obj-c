///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingMemberSelector.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingMemberSelector 

- (instancetype)initWithDropboxId:(NSString *)dropboxId {
    self = [super init];
    if (self != nil) {
        _tag = (SharingMemberSelectorTag)SharingMemberSelectorDropboxId;
        _dropboxId = dropboxId;
    }
    return self;
}

- (instancetype)initWithEmail:(NSString *)email {
    self = [super init];
    if (self != nil) {
        _tag = (SharingMemberSelectorTag)SharingMemberSelectorEmail;
        _email = email;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (SharingMemberSelectorTag)SharingMemberSelectorOther;
    }
    return self;
}

- (BOOL)isDropboxId {
    return _tag == (SharingMemberSelectorTag)SharingMemberSelectorDropboxId;
}

- (BOOL)isEmail {
    return _tag == (SharingMemberSelectorTag)SharingMemberSelectorEmail;
}

- (BOOL)isOther {
    return _tag == (SharingMemberSelectorTag)SharingMemberSelectorOther;
}

- (NSString *)getTagName {
    if (_tag == (SharingMemberSelectorTag)SharingMemberSelectorDropboxId) {
        return @"(SharingMemberSelectorTag)SharingMemberSelectorDropboxId";
    }
    if (_tag == (SharingMemberSelectorTag)SharingMemberSelectorEmail) {
        return @"(SharingMemberSelectorTag)SharingMemberSelectorEmail";
    }
    if (_tag == (SharingMemberSelectorTag)SharingMemberSelectorOther) {
        return @"(SharingMemberSelectorTag)SharingMemberSelectorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (NSString *)dropboxId {
    if (_tag != (SharingMemberSelectorTag)SharingMemberSelectorDropboxId) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingMemberSelectorTag)SharingMemberSelectorDropboxId, but was %@.", [self getTagName]];
    }
    return _dropboxId;
}

- (NSString *)email {
    if (_tag != (SharingMemberSelectorTag)SharingMemberSelectorEmail) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingMemberSelectorTag)SharingMemberSelectorEmail, but was %@.", [self getTagName]];
    }
    return _email;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingMemberSelectorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingMemberSelectorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingMemberSelectorSerializer serialize:self] description];
}

@end


@implementation DbxSharingMemberSelectorSerializer 

+ (NSDictionary *)serialize:(DbxSharingMemberSelector *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isDropboxId]) {
        jsonDict[@"dropbox_id"] = valueObj.dropboxId;
        jsonDict[@".tag"] = @"dropbox_id";
    }
    else if ([valueObj isEmail]) {
        jsonDict[@"email"] = valueObj.email;
        jsonDict[@".tag"] = @"email";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingMemberSelector *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"dropbox_id"]) {
        NSString *dropboxId = valueDict[@"dropbox_id"];
        return [[DbxSharingMemberSelector alloc] initWithDropboxId:dropboxId];
    }
    if ([tag isEqualToString:@"email"]) {
        NSString *email = valueDict[@"email"];
        return [[DbxSharingMemberSelector alloc] initWithEmail:email];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingMemberSelector alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
