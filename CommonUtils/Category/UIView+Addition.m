//
//  UIView+Addition.m
//  roycms
//
//  Created by roycms on 13-5-17.
//  Copyright (c) 2013年 cn.roycms. All rights reserved.
//

#import "UIView+Addition.h"

@implementation UIView (Addition)

- (UIView *)subViewWithTag:(int)tag
{
	for (UIView *v in self.subviews)
    {
		if (v.tag == tag)
        {
			return v;
		}
	}
	return nil;
}


@end
