@implementation File

/*
+ (bool)is_dir:(NSString *)path{
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

