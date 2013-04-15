//
//  JSON.m
//  Tovi
//
//  Created by ideawu on 13-4-14.
//  Copyright (c) 2013年 udpwork.com. All rights reserved.
//

#import "JSON.h"

NSString *json_encode(id obj){
	BOOL is_primative = false;
	if(![obj isKindOfClass:[NSArray class]] && ![obj isKindOfClass:[NSDictionary class]]){
		is_primative = true;
		obj = [NSArray arrayWithObject: obj];
	}
	id data = [NSJSONSerialization dataWithJSONObject:obj options:0 error:nil];
	NSError *err = nil;
	NSString *str = [[NSString alloc] initWithData:data encoding:[NSString defaultCStringEncoding]];
	if(err){
		return nil;
	}
	if(is_primative){
		str = [str substringWithRange:NSMakeRange(1, [str length]-2)];
	}
	return str;
}

id json_decode(NSString *str){
	str = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
	BOOL is_primative = false;
	unichar ch = [str characterAtIndex:0];
	if(ch == '"' || (ch != '[' && ch != '{')){
		is_primative = true;
		str = [NSString stringWithFormat:@"[%@]", str, nil];
	}
	NSData* data = [str dataUsingEncoding:[NSString defaultCStringEncoding]];
	NSError *err = nil;
	id obj = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
	if(err){
		return nil;
	}
	if(is_primative){
		obj = [obj objectAtIndex: 0];
	}
	return obj;
}


@implementation JSON

@end
