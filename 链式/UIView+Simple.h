

// 链式编程方法：
// 返回值是block的方法 ； block的返回值是self的类
// 原理是当执行函数返回值时调用了block
#import <UIKit/UIKit.h>
#define Viewz UIView.View()
NS_ASSUME_NONNULL_BEGIN

@interface UIView (Simple)

+(UIView *(^)(void))View;

-(UIView * (^)(CGRect frame))fra ;

-(UIView *(^)(UIColor *bg))bg;

-(UIView *(^)(UIView * v))addTo;

@end

NS_ASSUME_NONNULL_END
