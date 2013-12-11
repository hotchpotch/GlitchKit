
#import "UIImageView+GKGlitch.h"

@implementation UIImageView (GKGlitch)

- (BOOL)glitch
{
    UIImage* image = self.image;
    if (image) {
        [self setImage:[image glitch]];
        return YES;
    } else {
        return NO;
    }
};

- (BOOL)glitchWithBlock: (int (^)(int byte, int index, uint length, Byte* bytes)) block
{
    UIImage* image = self.image;
    if (image) {
        [self setImage:[image glitchWithBlock:block]];
        return YES;
    } else {
        return NO;
    }
};

@end
