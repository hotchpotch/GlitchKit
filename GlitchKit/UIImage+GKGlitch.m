
#import "UIImage+GKGlitch.h"

@implementation UIImage (GKGlitch)

- (UIImage *)glitch
{
    return [UIImage imageWithData:[self glitchData]];
}

- (UIImage *)glitchWithBlock: (int (^)(int byte, int index, uint length, Byte* bytes)) block;
{
    return [UIImage imageWithData:[self glitchDataWithBlock:block]];
}


- (NSData *)glitchData
{
    return [self glitchDataWithBlock:^int(int byte, int index, uint length, Byte *bytes) {
        if (byte == 42 && arc4random() % 3 == 1) {
            return 37 + arc4random() % 10;
        } else {
            return byte;
        }
    }];
}

- (NSData *)glitchDataWithBlock: (int (^)(int byte, int index, uint length, Byte* bytes)) block
{
    NSData* imageData = [[NSData alloc] initWithData:UIImageJPEGRepresentation(self, 1.0)];
    NSUInteger const length = [imageData length];
    Byte* bytes = NULL;
    if (bytes != NULL) {
        free(bytes);
    }
    bytes = (Byte*)malloc(length);
    memcpy(bytes, [imageData bytes], length);
    
    for (int i = 0; i < length; i++) {
        int const byte = bytes[i];
        int const b = block(byte, i, length, bytes);
        if (byte != b) {
            bytes[i] = b;
        }
    }
    NSData* returnImageData = [NSData dataWithBytes:bytes length:length];
    if (bytes != NULL) {
        free(bytes);
        bytes = NULL;
    }
    return returnImageData;
}


@end
