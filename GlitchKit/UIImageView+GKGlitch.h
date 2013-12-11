
#import <UIKit/UIKit.h>
#import "UIImage+GKGlitch.h"

@interface UIImageView (GKGlitch)
- (BOOL)glitch;
- (BOOL)glitchWithBlock: (int (^)(int byte, int index, uint length, Byte* bytes)) block;
@end
