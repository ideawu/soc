//
//  JSON.h
//  Tovi
//
//  Created by ideawu on 13-4-14.
//  Copyright (c) 2013年 udpwork.com. All rights reserved.
//

#import <Foundation/Foundation.h>

id json_decode(NSString *str);
NSString *json_encode(id obj);


@interface JSON : NSObject

@end
