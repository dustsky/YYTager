//
//  KRYTagCreator.m
//  Pods
//
//  Created by dustsky on 2019/9/12.
//

#import "KRYTagCreator.h"

@interface KRYTagLabelConfigure : NSObject

@property (nonatomic,assign) CGFloat defaultHeight;
@property (nonatomic,assign) CGFloat defaultCornerRadius;
@property (nonatomic,assign) CGFloat defaultTextSize;
@property (nonatomic,assign) CGFloat defaultHorizontalInset;

- (instancetype)initWithTagSizeType:(KRYLableTagSizeType)sizeType;

@end

@implementation KRYTagLabelConfigure

- (instancetype)initWithTagSizeType:(KRYLableTagSizeType)sizeType {
    
    if (self = [super init]) {
        switch (sizeType) {
            case MIDDLE:
                _defaultHeight = 40.0;
                _defaultTextSize = 24.0;
                _defaultHorizontalInset = 14.0;
                _defaultCornerRadius = 20.0;
                break;
            case SMALL:
                _defaultHeight = 32.0;
                _defaultTextSize = 20.0;
                _defaultHorizontalInset = 10.0;
                _defaultCornerRadius = 16.0;
                break;
            default:
                break;
        }
    }
    return self;
}

@end

@implementation KRYTagCreator

+ (KRYStringStaticTag *)createLabelTagWithText:(NSString*)text sizeType:(KRYLableTagSizeType)sizeType {
    
    KRYTagLabelConfigure *configure = [[KRYTagLabelConfigure alloc] initWithTagSizeType:sizeType];
    
    KRYStringStaticTag *labelTag = [[KRYStringStaticTag alloc] initWithText:text textSize:configure.defaultTextSize];
    
    labelTag.text = text;
    labelTag.height = configure.defaultHeight;
    labelTag.cornerRadius = configure.defaultCornerRadius;
    labelTag.horizontalInset = configure.defaultHorizontalInset;
    return labelTag;
}
@end
