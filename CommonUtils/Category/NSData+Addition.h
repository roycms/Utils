//
//  NSData+Addition.h
//  roycms
//
//  Created by roycms on 12-12-5.
//  Copyright (c) 2012年 roycms. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Addition)
- (NSData *)dataWithObject:(id)object;
- (id)convertDataToObject;

@end
