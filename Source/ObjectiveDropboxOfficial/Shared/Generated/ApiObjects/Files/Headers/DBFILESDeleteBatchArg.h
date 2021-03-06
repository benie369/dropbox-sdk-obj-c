///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBFILESDeleteArg;
@class DBFILESDeleteBatchArg;

#pragma mark - API Object

///
/// The `DeleteBatchArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBFILESDeleteBatchArg : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// (no description).
@property (nonatomic, readonly) NSArray<DBFILESDeleteArg *> * _Nonnull entries;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param entries (no description).
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithEntries:(NSArray<DBFILESDeleteArg *> * _Nonnull)entries;

- (nonnull instancetype)init NS_UNAVAILABLE;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DeleteBatchArg` struct.
///
@interface DBFILESDeleteBatchArgSerializer : NSObject

///
/// Serializes `DBFILESDeleteBatchArg` instances.
///
/// @param instance An instance of the `DBFILESDeleteBatchArg` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBFILESDeleteBatchArg` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBFILESDeleteBatchArg * _Nonnull)instance;

///
/// Deserializes `DBFILESDeleteBatchArg` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBFILESDeleteBatchArg` API object.
///
/// @return An instantiation of the `DBFILESDeleteBatchArg` object.
///
+ (DBFILESDeleteBatchArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
