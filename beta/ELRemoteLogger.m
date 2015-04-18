//
//  ELRemoteLogger.m
//  Inbox
//
//  Created by Martin Stoyanov on 1/31/15.
//  Copyright (c) 2015 Emailio. All rights reserved.
//

#import "ELRemoteLogger.h"
#import <DDASLLogger.h>
#import <DDTTYLogger.h>
#import <RMPaperTrailLogger.h>
#import <DDLogMacros.h>
#import <DDLegacyMacros.h>

#ifdef DEBUG
static const int ddLogLevel = DDLogLevelVerbose;
#else
static const int ddLogLevel = DDLogLevelError;
#endif

@implementation ELRemoteLogger

+(void)setupLogger
{
    // Configure CocoaLumberjack
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    
    RMPaperTrailLogger *paperTrailLogger = [RMPaperTrailLogger sharedInstance];
    paperTrailLogger.host = @"logs2.papertrailapp.com";
    paperTrailLogger.port = 30794;
    paperTrailLogger.useTcp = NO;
    paperTrailLogger.useTLS = NO;
    [DDLog addLogger:paperTrailLogger];
}

+ (void)log:(NSString *)logMessage
{
    if (!logMessage)
        return;
    
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
    
//        @try {
//            Account *primary = [Account EL_findPrimary];
//            if (primary.email)
//            {
//                NSString *log = [NSString stringWithFormat:@"%@/%@: %@", primary.email, primary.refreshToken, logMessage];
//                DDLogVerbose(log);
//            }else{
                DDLogVerbose(logMessage);
//            }
//        }
//        @catch (NSException *exception) {
//            NSLog(@"exception from logger %@", exception);
//        }
//    });
}

@end
