///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMAdminTier;
@class DBTEAMTeamMemberInfo;
@class DBTEAMTeamMemberProfile;

#pragma mark - API Object

///
/// The `TeamMemberInfo` struct.
///
/// Information about a team member.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMTeamMemberInfo : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// Profile of a user as a member of a team.
@property (nonatomic, readonly) DBTEAMTeamMemberProfile * _Nonnull profile;

/// The user's role in the team.
@property (nonatomic, readonly) DBTEAMAdminTier * _Nonnull role;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param profile Profile of a user as a member of a team.
/// @param role The user's role in the team.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithProfile:(DBTEAMTeamMemberProfile * _Nonnull)profile role:(DBTEAMAdminTier * _Nonnull)role;

- (nonnull instancetype)init NS_UNAVAILABLE;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `TeamMemberInfo` struct.
///
@interface DBTEAMTeamMemberInfoSerializer : NSObject

///
/// Serializes `DBTEAMTeamMemberInfo` instances.
///
/// @param instance An instance of the `DBTEAMTeamMemberInfo` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMTeamMemberInfo` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMTeamMemberInfo * _Nonnull)instance;

///
/// Deserializes `DBTEAMTeamMemberInfo` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMTeamMemberInfo` API object.
///
/// @return An instantiation of the `DBTEAMTeamMemberInfo` object.
///
+ (DBTEAMTeamMemberInfo * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
