///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESSearchMatchType.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESSearchMatchType

#pragma mark - Constructors

- (instancetype)initWithFilename {
  self = [super init];
  if (self) {
    _tag = DBFILESSearchMatchTypeFilename;
  }
  return self;
}

- (instancetype)initWithContent {
  self = [super init];
  if (self) {
    _tag = DBFILESSearchMatchTypeContent;
  }
  return self;
}

- (instancetype)initWithBoth {
  self = [super init];
  if (self) {
    _tag = DBFILESSearchMatchTypeBoth;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isFilename {
  return _tag == DBFILESSearchMatchTypeFilename;
}

- (BOOL)isContent {
  return _tag == DBFILESSearchMatchTypeContent;
}

- (BOOL)isBoth {
  return _tag == DBFILESSearchMatchTypeBoth;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESSearchMatchTypeFilename:
    return @"DBFILESSearchMatchTypeFilename";
  case DBFILESSearchMatchTypeContent:
    return @"DBFILESSearchMatchTypeContent";
  case DBFILESSearchMatchTypeBoth:
    return @"DBFILESSearchMatchTypeBoth";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESSearchMatchTypeSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESSearchMatchTypeSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESSearchMatchTypeSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESSearchMatchTypeSerializer

+ (NSDictionary *)serialize:(DBFILESSearchMatchType *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isFilename]) {
    jsonDict[@".tag"] = @"filename";
  } else if ([valueObj isContent]) {
    jsonDict[@".tag"] = @"content";
  } else if ([valueObj isBoth]) {
    jsonDict[@".tag"] = @"both";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBFILESSearchMatchType *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"filename"]) {
    return [[DBFILESSearchMatchType alloc] initWithFilename];
  } else if ([tag isEqualToString:@"content"]) {
    return [[DBFILESSearchMatchType alloc] initWithContent];
  } else if ([tag isEqualToString:@"both"]) {
    return [[DBFILESSearchMatchType alloc] initWithBoth];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
