//
//  UIImage+videoshot.m
//  AVFondation视频处理demo
//
//  Created by MrWu on 16/8/18.
//  Copyright © 2016年 TTYL. All rights reserved.
//

#import "UIImage+videoshot.h"


@implementation UIImage (videoshot)

+ (UIImage *)imageWithVideo:(NSURL *)videoURL generatorTime:(CMTime)time {
    AVURLAsset *assert = [[AVURLAsset alloc] initWithURL:videoURL options:nil];
    AVAssetImageGenerator *generator = [[AVAssetImageGenerator alloc] initWithAsset:assert];
    generator.appliesPreferredTrackTransform = YES;
    //定义时间在0处的视频截图
//    CMTime time = CMTimeMake(0, 10);
    NSError *error = nil;
    //实际生成图片的时间点
    CMTime actureTime;
    
    //获取某一时刻的视频截图
    CGImageRef image =  [generator copyCGImageAtTime:time actualTime:&actureTime error:&error];
    UIImage *shotImage = [UIImage imageWithCGImage:image];
    CGImageRelease(image);
    return shotImage;
}
@end
