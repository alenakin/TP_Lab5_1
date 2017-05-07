//
//  main.m
//  Analyzer
//
//  Created by Elena on 30.04.17.
//  Copyright © 2017 Elena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Analyzer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* s = @"a a a b b aa a 12 afse yhr 345 345 sdfr 345";
        Analyzer* a = [[Analyzer alloc] init];
        [a printStatistics:s];
    }
    return 0;
}
