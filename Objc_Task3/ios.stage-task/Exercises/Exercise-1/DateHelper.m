#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    if (monthNumber < 1 || monthNumber > 12) {
            return nil;
        }
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSLocale *locale = [[NSLocale alloc]
                             initWithLocaleIdentifier:@"en_US"];
        [dateFormatter setLocale:locale];
        return [[dateFormatter monthSymbols] objectAtIndex:(monthNumber-1)];
    }
    

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
    NSDate *parseDate = [dateFormatter dateFromString:date];
    [dateFormatter setDateFormat:@"dd"];
    return [dateFormatter stringFromDate:parseDate].longLongValue;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSLocale *locale = [[NSLocale alloc]
                         initWithLocaleIdentifier:@"ru_RU"];
    [dateFormatter setLocale:locale];
    [dateFormatter setDateFormat:@"E"];
    return [dateFormatter stringFromDate:date];
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    return NO;
}

@end
