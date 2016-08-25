///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesCreateFolderArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesCreateFolderArg 

- (instancetype)initWithPath:(NSString *)path {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"](path);

    self = [super init];
    if (self != nil) {
        _path = path;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesCreateFolderArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesCreateFolderArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesCreateFolderArgSerializer serialize:self] description];
}

@end


@implementation DbxFilesCreateFolderArgSerializer 

+ (NSDictionary *)serialize:(DbxFilesCreateFolderArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = valueObj.path;

    return jsonDict;
}

+ (DbxFilesCreateFolderArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = valueDict[@"path"];

    return [[DbxFilesCreateFolderArg alloc] initWithPath:path];
}

@end
