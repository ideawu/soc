//
//  HTML.m
//  Tovi
//
//  Created by ideawu on 13-4-14.
//  Copyright (c) 2013年 udpwork.com. All rights reserved.
//

#import "HTML.h"

NSString *html_encode(NSString *str){
	str = [str stringByReplacingOccurrencesOfString:@"<" withString:@"&lt;"];
	str = [str stringByReplacingOccurrencesOfString:@">" withString:@"&gt;"];
	str = [str stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"];
	str = [str stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"];
	// don't convert single quote
	return str;
}

NSString *html_decode(NSString *str){
	str = [str stringByReplacingOccurrencesOfString:@"&lt;" withString:@"<"];
	str = [str stringByReplacingOccurrencesOfString:@"&gt;" withString:@">"];
	str = [str stringByReplacingOccurrencesOfString:@"&amp;" withString:@"&"];
	str = [str stringByReplacingOccurrencesOfString:@"&quot;" withString:@"\""];
	return str;
}

@implementation HTML

@end
