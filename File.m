//
//  File.m
//  Tovi
//
//  Created by ideawu on 13-3-25.
//  Copyright (c) 2013年 udpwork.com. All rights reserved.
//

#import "File.h"

@implementation File

/*
 + (bool)isDir:(NSString *)path{
 }
 */

+ (NSString *)extension:(NSString *)path{
	return [path pathExtension];
}

+ (NSString *)basename:(NSString *)path{
	return [path lastPathComponent];
}

+ (NSString *)dirname:(NSString *)path{
	return [path stringByDeletingLastPathComponent];
}

+ (NSArray *)scandir:(NSString *)dir{
	NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dir error:nil];
	return files;
}

+ (NSArray *)glob:(NSString *)dir{
	return nil;
}

@end
