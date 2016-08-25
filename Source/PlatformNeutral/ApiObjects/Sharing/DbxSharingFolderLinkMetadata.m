///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingFolderLinkMetadata.h"
#import "DbxSharingLinkPermissions.h"
#import "DbxSharingSharedLinkMetadata.h"
#import "DbxSharingTeamMemberInfo.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxUsersTeam.h"

@implementation DbxSharingFolderLinkMetadata 

- (instancetype)initWithUrl:(NSString *)url name:(NSString *)name linkPermissions:(DbxSharingLinkPermissions *)linkPermissions id_:(NSString *)id_ expires:(NSDate *)expires pathLower:(NSString *)pathLower teamMemberInfo:(DbxSharingTeamMemberInfo *)teamMemberInfo contentOwnerTeamInfo:(DbxUsersTeam *)contentOwnerTeamInfo {
    [DbxStoneValidators nullableValidator:[DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:nil]](id_);

    self = [super initWithUrl:url name:name linkPermissions:linkPermissions id_:id_ expires:expires pathLower:pathLower teamMemberInfo:teamMemberInfo contentOwnerTeamInfo:contentOwnerTeamInfo];
    if (self != nil) {
    }
    return self;
}

- (instancetype)initWithUrl:(NSString *)url name:(NSString *)name linkPermissions:(DbxSharingLinkPermissions *)linkPermissions {
    return [self initWithUrl:url name:name linkPermissions:linkPermissions id_:nil expires:nil pathLower:nil teamMemberInfo:nil contentOwnerTeamInfo:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingFolderLinkMetadataSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingFolderLinkMetadataSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingFolderLinkMetadataSerializer serialize:self] description];
}

@end


@implementation DbxSharingFolderLinkMetadataSerializer 

+ (NSDictionary *)serialize:(DbxSharingFolderLinkMetadata *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"url"] = valueObj.url;
    jsonDict[@"name"] = valueObj.name;
    jsonDict[@"link_permissions"] = [DbxSharingLinkPermissionsSerializer serialize:valueObj.linkPermissions];
    if (valueObj.id_) {
        jsonDict[@"id"] = valueObj.id_;
    }
    if (valueObj.expires) {
        jsonDict[@"expires"] = [DbxNSDateSerializer serialize:valueObj.expires dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }
    if (valueObj.pathLower) {
        jsonDict[@"path_lower"] = valueObj.pathLower;
    }
    if (valueObj.teamMemberInfo) {
        jsonDict[@"team_member_info"] = [DbxSharingTeamMemberInfoSerializer serialize:valueObj.teamMemberInfo];
    }
    if (valueObj.contentOwnerTeamInfo) {
        jsonDict[@"content_owner_team_info"] = [DbxUsersTeamSerializer serialize:valueObj.contentOwnerTeamInfo];
    }

    return jsonDict;
}

+ (DbxSharingFolderLinkMetadata *)deserialize:(NSDictionary *)valueDict {
    NSString *url = valueDict[@"url"];
    NSString *name = valueDict[@"name"];
    DbxSharingLinkPermissions *linkPermissions = [DbxSharingLinkPermissionsSerializer deserialize:valueDict[@"link_permissions"]];
    NSString *id_ = valueDict[@"id"] ? valueDict[@"id"] : nil;
    NSDate *expires = valueDict[@"expires"] ? [DbxNSDateSerializer deserialize:valueDict[@"expires"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;
    NSString *pathLower = valueDict[@"path_lower"] ? valueDict[@"path_lower"] : nil;
    DbxSharingTeamMemberInfo *teamMemberInfo = valueDict[@"team_member_info"] ? [DbxSharingTeamMemberInfoSerializer deserialize:valueDict[@"team_member_info"]] : nil;
    DbxUsersTeam *contentOwnerTeamInfo = valueDict[@"content_owner_team_info"] ? [DbxUsersTeamSerializer deserialize:valueDict[@"content_owner_team_info"]] : nil;

    return [[DbxSharingFolderLinkMetadata alloc] initWithUrl:url name:name linkPermissions:linkPermissions id_:id_ expires:expires pathLower:pathLower teamMemberInfo:teamMemberInfo contentOwnerTeamInfo:contentOwnerTeamInfo];
}

@end
