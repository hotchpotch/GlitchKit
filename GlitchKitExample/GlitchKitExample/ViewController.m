//
//  ViewController.m
//  GlitchKitExample
//
//  Created by yuichi-tateno on 2013/12/11.
//  Copyright (c) 2013年 yuichi-tateno. All rights reserved.
//

#import "ViewController.h"
#import "GlitchKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImageView* imageView = (UIImageView*)[self.view viewWithTag:100];
    
    // glitch
    [imageView glitch];
    
    // glitch by custom block
    /*
    [imageView glitchWithBlock:^int(int byte, int index, uint length, Byte *bytes) {
        return (byte == 42) ? 0 : byte;
    }];
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
