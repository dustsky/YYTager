//
//  KRYStringBasicTag.m
//  Pods
//
//  Created by dustsky on 2019/9/12.
//

#import "KRYStringBasicTag.h"
#import "KRYStringActionTag.h"
#import "KRYStringStaticTag.h"

static CGSize textDefaultSize(NSString *text, CGFloat textSize) {
    return [text boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:textSize]} context:nil].size;
}

@interface KRYStringBasicTag()

@end

@implementation KRYStringBasicTag

- (instancetype)initWithText:(NSString *)text textSize:(CGFloat)textSize {
    
    CGSize size = textDefaultSize(text,textSize);
    if (self = [self initWithFrame:CGRectMake(0, 0, size.width, size.height)]) {
        self.width = size.width;
        self.height = size.height;
        self.text = text;
        self.textSize = textSize;
    }
    return self;
}

- (instancetype)init {
    
    if (self = [self initWithFrame:CGRectZero]) {
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    if ([self isMemberOfClass:[KRYStringBasicTag class]]) {
        @throw [NSException exceptionWithName:NSStringFromClass([self class]) reason:@"Attempting to instantiate an abstract class. Use a concrete subclass instead." userInfo:nil];
        return nil;
    }
    self = [super initWithFrame:frame];
    
    return self;
}

- (void)setWidth:(CGFloat)width {
    if (width < _width) {
        return;
    }
    _width = width;
    [self _updateUI];
}

- (void)setHeight:(CGFloat)height {
    if (height < _height) {
        return;
    }
    _height = height;
    [self _updateUI];
}

- (void)setTextSize:(CGFloat)textSize {
    _textSize = textSize;
    [self _updateUI];
}

- (void)setFillColor:(UIColor *)fillColor {
    _fillColor = fillColor;
    [self _updateUI];
}

- (void)setStrokeColor:(UIColor *)strokeColor {
    _strokeColor = strokeColor;
    [self _updateUI];
}

- (void)setHorizontalInset:(CGFloat)horizontalInset {
    _horizontalInset = horizontalInset;
    [self _updateUI];
}

- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;
    [self _updateUI];
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    [self _updateUI];
}

#pragma mark - Private

//hook method
- (void)_updateUI {
    
    [self setNeedsLayout];
//    @throw [NSException exceptionWithName:NSStringFromClass([self class]) reason:@"Attempting to call an hook method. Don't Use [super _updateUI] in subclass." userInfo:nil];
}

#pragma mark - Public

- (void)layout {
    
    
}

- (void)sizeToFitText {

    [self _updateUI];
}

@end
