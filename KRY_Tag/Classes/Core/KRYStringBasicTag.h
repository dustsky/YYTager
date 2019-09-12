//
//  KRYStringBasicTag.h
//  Pods
//
//  Created by dustsky on 2019/9/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, KRYStringBasicTagType) {
    STATIC, //不可编辑，只能静态生成，不能动态添加，删除
    ACTION  //可添加，删除
};

@class KRYStringBasicTag;

@protocol KRYStringBasicTagEventDelegate <NSObject>

- (void)clickedKryTag:(KRYStringBasicTag *)basicTag;

@end

@interface KRYStringBasicTag : UIView

//若定义了width，height则按实际定义宽高显示,无定义，则自适配宽高

#pragma mark - Property.Frame

@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;

#pragma mark - Property.Color

@property (nonatomic,strong) UIColor *fillColor;
@property (nonatomic,strong) UIColor *textColor;
@property (nonatomic,strong) UIColor *strokeColor;

#pragma mark - Property.Text
@property (nonatomic,assign) CGFloat textSize;
@property (nonatomic,copy) NSString *text;

#pragma mark - Property.Inset
@property (nonatomic,assign) CGFloat horizontalInset;
@property (nonatomic,assign) CGFloat cornerRadius;

@property (nonatomic,assign,getter=isEditable) BOOL editable; //是否可编辑

- (instancetype)initWithText:(NSString *)text textSize:(CGFloat)textSize;

- (void)sizeToFitText;

@end

NS_ASSUME_NONNULL_END
