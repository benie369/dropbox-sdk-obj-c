///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesSaveUrlArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesSaveUrlArg 

- (instancetype)initWithPath:(NSString *)path url:(NSString *)url {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"/(.|[\\r\\n])*"](path);

    self = [super init];
    if (self != nil) {
        _path = path;
        _url = url;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesSaveUrlArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesSaveUrlArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesSaveUrlArgSerializer serialize:self] description];
}

@end


@implementation DbxFilesSaveUrlArgSerializer 

+ (NSDictionary *)serialize:(DbxFilesSaveUrlArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = valueObj.path;
    jsonDict[@"url"] = valueObj.url;

    return jsonDict;
}

+ (DbxFilesSaveUrlArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = valueDict[@"path"];
    NSString *url = valueDict[@"url"];

    return [[DbxFilesSaveUrlArg alloc] initWithPath:path url:url];
}

@end
