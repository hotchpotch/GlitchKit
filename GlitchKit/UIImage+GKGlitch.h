
#import <UIKit/UIKit.h>

@interface UIImage (GKGlitch)
- (UIImage *)glitch;
- (UIImage *)glitchWithBlock: (int (^)(int byte, int index, uint length, Byte* bytes)) block;
- (NSData *)glitchData;
- (NSData *)glitchDataWithBlock: (int (^)(int byte, int index, uint length, Byte* bytes)) block;
@end
