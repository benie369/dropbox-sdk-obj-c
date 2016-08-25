///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamDeviceSession.h"
#import "DbxTeamMobileClientPlatform.h"
#import "DbxTeamMobileClientSession.h"

@implementation DbxTeamMobileClientSession 

- (instancetype)initWithSessionId:(NSString *)sessionId deviceName:(NSString *)deviceName clientType:(DbxTeamMobileClientPlatform *)clientType ipAddress:(NSString *)ipAddress country:(NSString *)country created:(NSDate *)created updated:(NSDate *)updated clientVersion:(NSString *)clientVersion osVersion:(NSString *)osVersion lastCarrier:(NSString *)lastCarrier {

    self = [super initWithSessionId:sessionId ipAddress:ipAddress country:country created:created updated:updated];
    if (self != nil) {
        _deviceName = deviceName;
        _clientType = clientType;
        _clientVersion = clientVersion;
        _osVersion = osVersion;
        _lastCarrier = lastCarrier;
    }
    return self;
}

- (instancetype)initWithSessionId:(NSString *)sessionId deviceName:(NSString *)deviceName clientType:(DbxTeamMobileClientPlatform *)clientType {
    return [self initWithSessionId:sessionId deviceName:deviceName clientType:clientType ipAddress:nil country:nil created:nil updated:nil clientVersion:nil osVersion:nil lastCarrier:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamMobileClientSessionSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamMobileClientSessionSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamMobileClientSessionSerializer serialize:self] description];
}

@end


@implementation DbxTeamMobileClientSessionSerializer 

+ (NSDictionary *)serialize:(DbxTeamMobileClientSession *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"session_id"] = valueObj.sessionId;
    jsonDict[@"device_name"] = valueObj.deviceName;
    jsonDict[@"client_type"] = [DbxTeamMobileClientPlatformSerializer serialize:valueObj.clientType];
    if (valueObj.ipAddress) {
        jsonDict[@"ip_address"] = valueObj.ipAddress;
    }
    if (valueObj.country) {
        jsonDict[@"country"] = valueObj.country;
    }
    if (valueObj.created) {
        jsonDict[@"created"] = [DbxNSDateSerializer serialize:valueObj.created dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }
    if (valueObj.updated) {
        jsonDict[@"updated"] = [DbxNSDateSerializer serialize:valueObj.updated dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }
    if (valueObj.clientVersion) {
        jsonDict[@"client_version"] = valueObj.clientVersion;
    }
    if (valueObj.osVersion) {
        jsonDict[@"os_version"] = valueObj.osVersion;
    }
    if (valueObj.lastCarrier) {
        jsonDict[@"last_carrier"] = valueObj.lastCarrier;
    }

    return jsonDict;
}

+ (DbxTeamMobileClientSession *)deserialize:(NSDictionary *)valueDict {
    NSString *sessionId = valueDict[@"session_id"];
    NSString *deviceName = valueDict[@"device_name"];
    DbxTeamMobileClientPlatform *clientType = [DbxTeamMobileClientPlatformSerializer deserialize:valueDict[@"client_type"]];
    NSString *ipAddress = valueDict[@"ip_address"] ? valueDict[@"ip_address"] : nil;
    NSString *country = valueDict[@"country"] ? valueDict[@"country"] : nil;
    NSDate *created = valueDict[@"created"] ? [DbxNSDateSerializer deserialize:valueDict[@"created"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;
    NSDate *updated = valueDict[@"updated"] ? [DbxNSDateSerializer deserialize:valueDict[@"updated"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;
    NSString *clientVersion = valueDict[@"client_version"] ? valueDict[@"client_version"] : nil;
    NSString *osVersion = valueDict[@"os_version"] ? valueDict[@"os_version"] : nil;
    NSString *lastCarrier = valueDict[@"last_carrier"] ? valueDict[@"last_carrier"] : nil;

    return [[DbxTeamMobileClientSession alloc] initWithSessionId:sessionId deviceName:deviceName clientType:clientType ipAddress:ipAddress country:country created:created updated:updated clientVersion:clientVersion osVersion:osVersion lastCarrier:lastCarrier];
}

@end
