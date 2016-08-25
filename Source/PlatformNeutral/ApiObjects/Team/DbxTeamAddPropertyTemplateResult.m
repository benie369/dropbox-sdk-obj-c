///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamAddPropertyTemplateResult.h"

@implementation DbxTeamAddPropertyTemplateResult 

- (instancetype)initWithTemplateId:(NSString *)templateId {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"(/|ptid:).*"](templateId);

    self = [super init];
    if (self != nil) {
        _templateId = templateId;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamAddPropertyTemplateResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamAddPropertyTemplateResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamAddPropertyTemplateResultSerializer serialize:self] description];
}

@end


@implementation DbxTeamAddPropertyTemplateResultSerializer 

+ (NSDictionary *)serialize:(DbxTeamAddPropertyTemplateResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"template_id"] = valueObj.templateId;

    return jsonDict;
}

+ (DbxTeamAddPropertyTemplateResult *)deserialize:(NSDictionary *)valueDict {
    NSString *templateId = valueDict[@"template_id"];

    return [[DbxTeamAddPropertyTemplateResult alloc] initWithTemplateId:templateId];
}

@end
