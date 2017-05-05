//
//  Analyzer.m
//  Analyzer
//
//  Created by Elena on 30.04.17.
//  Copyright © 2017 Elena. All rights reserved.
//

#import "Analyzer.h"

@implementation Analyzer

-(NSArray*)getWords:(NSString*)text
{
    return [text componentsSeparatedByString:@" "];
}

-(NSDictionary*)getStatistics:(NSArray*)array
{
    NSDictionary* d;
    for (NSString* s in array)
    {
        [d ]
    }
}

-(void)printStatistics;

@end
