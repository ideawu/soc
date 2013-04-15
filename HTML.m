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

NSString *urlencode(NSString *str){
	CFStringEncoding cfEncoding = kCFStringEncodingUTF8;
	str = (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(
																	   NULL,
																	   (CFStringRef)str,
																	   NULL,
																	   (CFStringRef)NULL,
																	   cfEncoding
																	   );
	return str;
}

NSString *urldecode(NSString *str){
	CFStringEncoding cfEncoding = kCFStringEncodingUTF8;
	str = (__bridge NSString *)CFURLCreateStringByReplacingPercentEscapesUsingEncoding (
																						NULL,
																						(CFStringRef)str,
																						CFSTR(""),
																						cfEncoding
																						);
	return str;
}

NSString *url_encode(NSString *str){
	return urlencode(str);
}

NSString *url_decode(NSString *str){
	return urldecode(str);
}


@implementation HTML

@end
