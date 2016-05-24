//
//  FELanguageManager.h
//  FELocalizedLanaguage
//
//  Created by FlyElephant on 16/5/24.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FELanguageManager : NSObject

+(void)setLanguage:(NSString *)l;

+(NSString *)get:(NSString *)key alter:(NSString *)alternate;

@end
