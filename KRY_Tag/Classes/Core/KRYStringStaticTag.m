//
//  KRYStringStaticTag.m
//  Pods
//
//  Created by dustsky on 2019/9/12.
//

#import "KRYStringStaticTag.h"

@interface _KRYStringStaticTag : UILabel


@end

@implementation _KRYStringStaticTag

- (instancetype)init {
    
    if (self = [super init]) {
        
    }
    return self;
}


@end

@interface KRYStringStaticTag ()

@property (nonatomic,strong) _KRYStringStaticTag *staticLabelTag;
@end

@implementation KRYStringStaticTag

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        self.editable = NO;
        _staticLabelTag = [[_KRYStringStaticTag alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        _staticLabelTag.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_staticLabelTag];
        [self _updateUI];
    }
    return self;
}

- (void)_updateUI {
    
    _staticLabelTag.textColor = self.textColor;
    _staticLabelTag.text = self.text;
    _staticLabelTag.font = [UIFont systemFontOfSize:self.textSize];
    
    self.backgroundColor = self.fillColor;
    self.layer.cornerRadius = self.cornerRadius;
    
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.width + self.horizontalInset * 2, self.height);
    
    if (self.strokeColor) {
        self.layer.borderWidth = 1.0;
        self.layer.borderColor = self.strokeColor.CGColor;
    }
    else {
        self.layer.borderWidth = 0.0;
        self.layer.borderColor = nil;
    }
    [self setNeedsLayout];
}

- (void)layoutSubviews {
    _staticLabelTag.frame = CGRectMake(self.horizontalInset, 0, self.width, self.height);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
