//
//  NSData+Addition.m
//  roycms
//
//  Created by roycms on 12-12-5.
//  Copyright (c) 2012年 roycms. All rights reserved.
//

#import "NSData+Addition.h"

@implementation NSData (Addition)

- (NSData *)dataWithObject:(id)object
{
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:object];
    return data;
}

- (id)convertDataToObject
{
    NSArray *array = [NSKeyedUnarchiver unarchiveObjectWithData:self];
    return array;
}

@end
