//
//  ELRemoteLogger.h
//  Inbox
//
//  Created by Martin Stoyanov on 1/31/15.
//  Copyright (c) 2015 Emailio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ELRemoteLogger : NSObject

+ (void)setupLogger;
+ (void)log:(NSString *)logMessage;

@end
