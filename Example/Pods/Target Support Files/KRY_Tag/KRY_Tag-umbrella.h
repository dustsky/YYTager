#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "KRYTag.h"
#import "KRYTagCreator.h"
#import "KRYStringActionTag.h"
#import "KRYStringBasicTag.h"
#import "KRYStringStaticTag.h"

FOUNDATION_EXPORT double KRY_TagVersionNumber;
FOUNDATION_EXPORT const unsigned char KRY_TagVersionString[];

