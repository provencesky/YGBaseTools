//
//  LGButton.m
//  LGWeibo-OC
//
//  Created by 李更 on 9/9/16.
//  Copyright © 2016 . All rights reserved.
//

#import "LGButton.h"
#define MARGIN 5

@implementation LGButton
-(void)layoutSubviews{
    
    [super layoutSubviews];
    
    self.titleLabel.x = MARGIN ;
    self.imageView.x = CGRectGetMaxX(self.titleLabel.frame) + MARGIN;
    
    //宽
    self.width = self.titleLabel.width + self.imageView.width + MARGIN *3;
    //中心
//    self.centerX = self.superview.width *0.5;
  
}
-(void)setTitle:(NSString *)title forState:(UIControlState)state{
    [super setTitle:title forState:state];
    [self sizeToFit];
    
}
-(void)setImage:(UIImage *)image forState:(UIControlState)state{
    [super setImage:image forState:state];
    [self sizeToFit];
}



@end
