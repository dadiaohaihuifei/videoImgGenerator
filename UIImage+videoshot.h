//
//  UIImage+videoshot.h
//  AVFondation视频处理demo
//
//  Created by MrWu on 16/8/18.
//  Copyright © 2016年 TTYL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface UIImage (videoshot)
/** 获取视频截图 */
+ (UIImage *)imageWithVideo:(NSURL *)videoURL generatorTime:(CMTime)time;
@end
