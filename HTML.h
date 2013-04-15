//
//  HTML.h
//  Tovi
//
//  Created by ideawu on 13-4-14.
//  Copyright (c) 2013年 udpwork.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *html_encode(NSString *str);
NSString *html_decode(NSString *str);

NSString *urlencode(NSString *str);
NSString *urldecode(NSString *str);
NSString *url_encode(NSString *str);
NSString *url_decode(NSString *str);

@interface HTML : NSObject

@end
