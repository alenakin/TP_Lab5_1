//
//  Analyzer.m
//  Analyzer
//
//  Created by Elena on 30.04.17.
//  Copyright © 2017 Elena. All rights reserved.
//

#import "Analyzer.h"

@implementation Analyzer

-(NSMutableDictionary*)getStatistics:(NSString*)text
{
    NSArray* words = [text componentsSeparatedByString:@" "];
    NSMutableDictionary* stat = [[NSMutableDictionary alloc] init];
    for (NSString* w in words)
    {
        NSNumber* check = stat[w];
        if (check == nil)
        {
            NSNumber* a = [NSNumber numberWithInt:1];
            [stat setValue:a forKey:w];
        }
        else
            [stat setValue:[NSNumber numberWithInt:([check intValue] + 1)] forKey:w];
    }
    
    return stat;
}

-(void)printStatistics:(NSString*)text
{
    NSMutableDictionary* stat = [self getStatistics:text];
    NSArray* a = [stat keysSortedByValueUsingComparator: ^(id obj1, id obj2) {
        
        if ([obj1 intValue] > [obj2 intValue]) {
            return (NSComparisonResult)NSOrderedAscending;
        }
        
        if ([obj1 intValue] < [obj2 intValue]) {
            return (NSComparisonResult)NSOrderedDescending;
        }
        return (NSComparisonResult)NSOrderedSame;
    }];
    
    int i = 0;
    for (NSString* s in a)
    {
        if (i == 5)
            break;
        NSLog(@"Word: %@, count: %d", s, [stat[s] intValue]);
        i++;
    }
}

@end
