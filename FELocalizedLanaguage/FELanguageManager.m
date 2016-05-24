//
//  FELanguageManager.m
//  FELocalizedLanaguage
//
//  Created by FlyElephant on 16/5/24.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "FELanguageManager.h"

static NSBundle *bundle = nil;

@implementation FELanguageManager

+(void)setLanguage:(NSString *)l {
    NSLog(@"preferredLang: %@", l);
    NSString *path = [[ NSBundle mainBundle ] pathForResource:l ofType:@"lproj" ];
    bundle = [NSBundle bundleWithPath:path];
}

+(NSString *)get:(NSString *)key alter:(NSString *)alternate {
    return [bundle localizedStringForKey:key value:alternate table:nil];
}


@end
