//
//  OPAYDef.m
//  
//
//  Copyright (c) 2015 Opus. All rights reserved.
//

#import "OPAYDef.h"

#define LOG_ON 1
#define LOG_OFF 2

#undef IS_LOG_ENABLE
#define IS_LOG_ENABLE LOG_OFF

@implementation OPAYDef

NSString * const url_for_single_user_token_Test = @"https://api.test.netbanx.com";  //Test env url
NSString * const url_for_single_user_token_Prod = @"https://api.netbanx.com";       //Prod env url 


+ (NSString*) merchantUserID {
    return merchantUserID;
}
+ (void) setMerchantUserID:(NSString*)value
{
    merchantUserID = value;
}

+ (NSString*) merchantPassword{
    return merchantPassword;
}
+ (void) setMerchantPassword:(NSString*)value
{
    merchantPassword = value;
}
+ (NSDictionary*) responseData
{
    return responseData;
}
+ (void) setResponseData:(NSDictionary*)value
{
    responseData=value;
}
+ (NSString*) merchantIdentifier
{
    return merchantIdentifier;
}
+ (void) setMerchantIdentifier:(NSString*)value
{
    merchantIdentifier=value;
}
+ (NSString*) countryCode{
    return countryCode;
}
+ (void) setCountryCode:(NSString*)value{
    countryCode=value;
}

+ (NSString*) currencyCode{
    
    return currencyCode;
}
+ (void) setCurrencyCode:(NSString*)value{
    currencyCode=value;
}
+ (NSString*) timeInterval{
    return timeInterval;
}
+ (void) setTimeInterval:(NSString*)value{
    timeInterval=value;
}
+ (NSString*) envType{
    return envType;
}
+ (void) setEnvType:(NSString*)value{
    envType=value;
}
+(NSString*)getOptimalUrl
{
    NSString *url;
    
    if ([envType isEqualToString:@"TEST_ENV"]) {
        url=url_for_single_user_token_Test;
        
    } else if([envType isEqualToString:@"PROD_ENV"])
    {
        url=url_for_single_user_token_Prod;
    }
    
    return url;
}
+(void)OPAYLog:(NSString*)functionName returnMessage:(id)message;
{
#if (IS_LOG_ENABLE == LOG_ON)
    
    NSLog(@"OPAY Log::Key::%@ ||Value::%@",functionName,message);
    
#endif
}
@end
