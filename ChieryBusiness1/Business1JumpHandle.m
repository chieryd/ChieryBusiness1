//
//  Business1JumpHandle.m
//  ChieryBusiness1
//
//  Created by chiery on 2018/1/8.
//  Copyright © 2018年 com.chiery.com. All rights reserved.
//

#import "Business1JumpHandle.h"
#import "ChieryBusiness1.h"
#import "ChieryVCController.h"


@implementation Business1JumpHandle

+ (BOOL)jumpHandleOpenURL:(NSURL *)url
              withUrlData:(NSDictionary *)urlData
             responseDelg:(id<ChieryJumpHandleResponsePrt>)responseDelg
                 userInfo:(id)userInfo {
    
    // url query和urlData合并
//    NSMutableDictionary * dictionaryParameter = [NSMutableDictionary dictionaryWithDictionary:[[url query] dictionaryFromQueryComponents]];
//    
//    if (urlData != nil && urlData.count > 0)
//    {
//        [dictionaryParameter addEntriesFromDictionary:urlData];
//    }
    
    NSString *searchType = [url relativePath];
    
    // 跳转酒店首页
    if ([searchType isEqualToString:@"/homePage"])
    {
        ChieryBusiness1 *business1 = [ChieryBusiness1 new];
        [[ChieryVCController getInstance].navigationController pushViewController:business1 animated:YES];
        
        return YES;
    }
    return NO;
}

@end
