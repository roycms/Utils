//
//  DES3Util.h
//  roycms
//
//  Created by roycms on 13-1-9.
//  Copyright (c) 2013年 roycms. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DES3Util : NSObject
// 加密方法
+ (NSString*)encrypt:(NSString*)plainText;

// 解密方法
+ (NSString*)decrypt:(NSString*)encryptText;


@end
