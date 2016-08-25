///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingGetSharedLinksError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingGetSharedLinksError 

- (instancetype)initWithPath:(NSString *)path {
    self = [super init];
    if (self != nil) {
        _tag = (SharingGetSharedLinksErrorTag)SharingGetSharedLinksErrorPath;
        _path = path;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (SharingGetSharedLinksErrorTag)SharingGetSharedLinksErrorOther;
    }
    return self;
}

- (BOOL)isPath {
    return _tag == (SharingGetSharedLinksErrorTag)SharingGetSharedLinksErrorPath;
}

- (BOOL)isOther {
    return _tag == (SharingGetSharedLinksErrorTag)SharingGetSharedLinksErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (SharingGetSharedLinksErrorTag)SharingGetSharedLinksErrorPath) {
        return @"(SharingGetSharedLinksErrorTag)SharingGetSharedLinksErrorPath";
    }
    if (_tag == (SharingGetSharedLinksErrorTag)SharingGetSharedLinksErrorOther) {
        return @"(SharingGetSharedLinksErrorTag)SharingGetSharedLinksErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (NSString *)path {
    if (_tag != (SharingGetSharedLinksErrorTag)SharingGetSharedLinksErrorPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingGetSharedLinksErrorTag)SharingGetSharedLinksErrorPath, but was %@.", [self getTagName]];
    }
    return _path;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingGetSharedLinksErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingGetSharedLinksErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingGetSharedLinksErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingGetSharedLinksErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingGetSharedLinksError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isPath]) {
        if (valueObj.path) {
            jsonDict[@"path"] = valueObj.path;
        }
        jsonDict[@".tag"] = @"path";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingGetSharedLinksError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"path"]) {
        NSString *path = valueDict[@"path"] ? valueDict[@"path"] : nil;
        return [[DbxSharingGetSharedLinksError alloc] initWithPath:path];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingGetSharedLinksError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
