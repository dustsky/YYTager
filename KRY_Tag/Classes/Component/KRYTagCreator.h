//
//  KRYTagCreator.h
//  Pods
//
//  Created by dustsky on 2019/9/12.
//

#import <Foundation/Foundation.h>
#import "KRYStringStaticTag.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, KRYLableTagSizeType) {
    SMALL,
    MIDDLE
};

@interface KRYTagCreator : NSObject


+ (KRYStringStaticTag *)createLabelTagWithPoint:(CGPoint)point text:(NSString*)text sizeType:(KRYLableTagSizeType)sizeType;

/**
 生成纯展示型标签，宽度随文字自动变化

 @param text <#text description#>
 @param sizeType <#sizeType description#>
 @return <#return value description#>
 */

+ (KRYStringStaticTag *)createLabelTagWithText:(NSString*)text sizeType:(KRYLableTagSizeType)sizeType;
@end

NS_ASSUME_NONNULL_END
