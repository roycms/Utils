//
//  NSDate+HW.m
//  StringDemo
//
//  Created by roycms on 12-10-11.
//  Copyright (c) 2012年cn.roycms. All rights reserved.
//

#import "NSDate+Addition.h"

@implementation NSDate (Addition)

- (NSString *)convertDateToStringWithFormat:(NSString *)format
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
//    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"GMT"];
//    [dateFormatter setTimeZone:timeZone];
    NSString *dateStr = [dateFormatter stringFromDate:self];
    return dateStr;
}

- (NSDate *)convertStringToDate:(NSString *)string format:(NSString *)format
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone localTimeZone]];
    [dateFormatter setDateFormat:format];
//    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"GMT"];
//    [dateFormatter setTimeZone:timeZone];
    NSDate *date = [dateFormatter dateFromString:string];
    return date;
}

- (NSDate *)cc_dateByMovingToBeginningOfDay
{
    unsigned int flags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents* parts = [[NSCalendar currentCalendar] components:flags fromDate:self];
    [parts setHour:0];
    [parts setMinute:0];
    [parts setSecond:0];
    return [[NSCalendar currentCalendar] dateFromComponents:parts];
}

- (NSDate *)cc_dateByMovingToEndOfDay
{
    unsigned int flags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents* parts = [[NSCalendar currentCalendar] components:flags fromDate:self];
    [parts setHour:23];
    [parts setMinute:59];
    [parts setSecond:59];
    return [[NSCalendar currentCalendar] dateFromComponents:parts];
}

- (NSDate *)cc_dateByMovingToFirstDayOfTheMonth
{
    NSDate *d = nil;
    BOOL ok = [[NSCalendar currentCalendar] rangeOfUnit:NSCalendarUnitMonth startDate:&d interval:NULL forDate:self];
    NSAssert1(ok, @"Failed to calculate the first day the month based on %@", self);
    return d;
}

- (NSDate *)cc_dateByMovingToFirstDayOfThePreviousMonth
{
    NSDateComponents *c = [[NSDateComponents alloc] init];
    c.month = -1;
    return [[[NSCalendar currentCalendar] dateByAddingComponents:c toDate:self options:0] cc_dateByMovingToFirstDayOfTheMonth];
}

- (NSDate *)cc_dateByMovingToFirstDayOfTheFollowingMonth
{
    NSDateComponents *c = [[NSDateComponents alloc] init];
    c.month = 1;
    return [[[NSCalendar currentCalendar] dateByAddingComponents:c toDate:self options:0] cc_dateByMovingToFirstDayOfTheMonth];
}

- (NSDateComponents *)cc_componentsForMonthDayAndYear
{
    return [[NSCalendar currentCalendar] components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate:self];
}

- (NSUInteger)cc_weekday
{
    return [[NSCalendar currentCalendar] ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitWeekday forDate:self];
}

- (NSUInteger)cc_numberOfDaysInMonth
{
    return [[NSCalendar currentCalendar] rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:self].length;
}


@end
