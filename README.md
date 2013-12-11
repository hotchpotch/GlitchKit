# GlitchKit - Glitch on image in Objective-C

```objc
[uiImageView glitch];

# apply custom glitch
[uiImageView glitchWithBlock:^int(int byte, int index, uint length, Byte *bytes) {
  return (byte == 42) ? 0 : byte;
}];
```

## GettingStarted

### Installation


```
# in your Podfile
pod 'GlitchKit', git: 'https://github.com/hotchpotch/GlitchKit'
```


