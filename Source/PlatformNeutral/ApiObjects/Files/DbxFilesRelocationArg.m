///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesRelocationArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesRelocationArg 

- (instancetype)initWithFromPath:(NSString *)fromPath toPath:(NSString *)toPath {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"](fromPath);
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"](toPath);

    self = [super init];
    if (self != nil) {
        _fromPath = fromPath;
        _toPath = toPath;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesRelocationArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesRelocationArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesRelocationArgSerializer serialize:self] description];
}

@end


@implementation DbxFilesRelocationArgSerializer 

+ (NSDictionary *)serialize:(DbxFilesRelocationArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"from_path"] = valueObj.fromPath;
    jsonDict[@"to_path"] = valueObj.toPath;

    return jsonDict;
}

+ (DbxFilesRelocationArg *)deserialize:(NSDictionary *)valueDict {
    NSString *fromPath = valueDict[@"from_path"];
    NSString *toPath = valueDict[@"to_path"];

    return [[DbxFilesRelocationArg alloc] initWithFromPath:fromPath toPath:toPath];
}

@end
