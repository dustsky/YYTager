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

+ (KRYStringStaticTag *)createLabelTagWithText:(NSString*)text sizeType:(KRYLableTagSizeType)sizeType;

@end

NS_ASSUME_NONNULL_END
