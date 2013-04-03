//
//  File.h
//  Tovi
//
//  Created by ideawu on 13-3-25.
//  Copyright (c) 2013年 udpwork.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface File : NSObject

+ (bool)isdir:(NSString *)path;
+ (bool)isfile:(NSString *)path;
+ (NSString *)extension:(NSString *)path;
+ (NSString *)basename:(NSString *)path;
+ (NSString *)dirname:(NSString *)path;
+ (NSArray *)scandir:(NSString *)dir;
+ (NSArray *)scandir:(NSString *)dir fullpath:(BOOL)fullpath;
+ (NSArray *)glob:(NSString *)dir;

@end
