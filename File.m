//
//  File.m
//  Tovi
//
//  Created by ideawu on 13-3-25.
//  Copyright (c) 2013年 udpwork.com. All rights reserved.
//

#import "File.h"

@implementation File

+ (bool)isdir:(NSString *)path{
	NSDictionary *attr = [[NSFileManager defaultManager] attributesOfItemAtPath:path error:nil];
	NSString *type = [attr objectForKey:NSFileType];
	//NSLog(@"%@ %@ %@", path, attr, type);
	if([type compare:NSFileTypeDirectory] == NSOrderedSame){
		return true;
	}
	return false;
}

+ (bool)isfile:(NSString *)path{
	NSDictionary *attr = [[NSFileManager defaultManager] attributesOfItemAtPath:path error:nil];
	NSString *type = [attr objectForKey:NSFileType];
	if([type compare:NSFileTypeRegular] == NSOrderedSame){
		return true;
	}
	return false;
}

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

+ (NSArray *)scandir:(NSString *)dir fullpath:(BOOL)fullpath{
	NSMutableArray *ret = [NSMutableArray array];
	for(NSString *f in [self scandir:dir]){
		if(fullpath){
			NSString *s = [NSString stringWithFormat:@"%@/%@", dir, f, nil];
			[ret addObject:s];
		}else{
			[ret addObject:f];
		}
	}
	return [ret sortedArrayUsingSelector:@selector(localizedStandardCompare:)];
}


+ (NSArray *)glob:(NSString *)dir{
	return nil;
}

@end
