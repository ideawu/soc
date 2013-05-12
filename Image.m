//
//  Image.m
//  soc
//
//  Created by ideawu on 13-5-12.
//  Copyright (c) 2013年 udpwork.com.soc. All rights reserved.
//

#import "Image.h"

@implementation Image

+ (NSError *)saveImage:(NSImage *)img asType:(NSBitmapImageFileType)type toFile:(NSString *)path{
	NSData *data = [img TIFFRepresentation];
    NSBitmapImageRep *rep = [NSBitmapImageRep imageRepWithData:data];
    data = [rep representationUsingType:type properties:nil];
	NSError *error = nil;
	[data writeToFile:path options:NSDataWritingAtomic error:&error];
	return error;
}

@end
