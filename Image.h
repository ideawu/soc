//
//  Image.h
//  soc
//
//  Created by ideawu on 13-5-12.
//  Copyright (c) 2013年 udpwork.com.soc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface Image : NSObject

+ (NSError *)saveImage:(NSImage *)img asType:(NSBitmapImageFileType)type toFile:(NSString *)path;

@end
