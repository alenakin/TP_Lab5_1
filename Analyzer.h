//
//  Analyzer.h
//  Analyzer
//
//  Created by Elena on 30.04.17.
//  Copyright © 2017 Elena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Analyzer : NSObject

-(NSMutableDictionary*)getStatistics:(NSString*)text;

-(void)printStatistics:(NSString*)text;

@end
