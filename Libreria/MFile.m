//
//  MFile.m
//  mySOS
//
//  Created by Marco Velluto on 08/02/13.
//  Copyright (c) 2013 algos. All rights reserved.
//

#import "MFile.h"
static NSString * const FILE_NAME = @"File.strings";

@implementation MFile

+ (void)writeWithObject:(NSObject *)obj andKey:(NSString *)key {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = [paths objectAtIndex: 0];
    NSString *docFile = [docDir stringByAppendingPathComponent: FILE_NAME];
    
    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:obj, key, nil];
    [dic writeToFile:docFile atomically:YES];
}

+ (void)writewithFileName:(NSString *)fileName WithObject:(NSObject *)obj andKey:(NSString *)key {
    
    if (!fileName) {
        fileName = FILE_NAME;
    }
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = [paths objectAtIndex: 0];
    NSString *docFile = [docDir stringByAppendingPathComponent: fileName];
    
    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:obj, key, nil];
    [dic writeToFile:docFile atomically:YES];
}

+ (void)writeDictionary:(NSDictionary *)dic {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = [paths objectAtIndex: 0];
    NSString *docFile = [docDir stringByAppendingPathComponent: FILE_NAME];
    
    [dic writeToFile:docFile atomically:YES];
}


+ (NSDictionary *)dictionaryWithFileName:(NSString *)fileName {
    
    if (fileName == nil) {
        fileName = FILE_NAME;
    }
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = [paths objectAtIndex: 0];
    NSString *docFile = [docDir stringByAppendingPathComponent: fileName];

    NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:docFile];
    
    return dictionary;
}


@end

