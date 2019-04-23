//
//  UIView+Simple.m
//  qqq
//
//  Created by ytkjs on 2019/4/23.
//  Copyright © 2019年 Gioures. All rights reserved.
//

#import "UIView+Simple.h"

@implementation UIView (Simple)

+(UIView * _Nonnull (^)(void))View{
    return ^{
        UIView * v = [UIView new];
        return v;
    };
}

-(UIView * _Nonnull (^)(CGRect))fra{
    return ^(CGRect f){
        self.frame = f;
        return self;
    };
}

-(UIView * _Nonnull (^)(UIColor * _Nonnull))bg{
    UIView *(^b)(UIColor *bg) = ^(UIColor * bg) {
        self.backgroundColor = bg;
        return self;
    };
    return b;
}

-(UIView * _Nonnull (^)(UIView * _Nonnull))addTo{
    return ^(UIView * v){
        [v addSubview:self];
        return self;
    };
}
@end
