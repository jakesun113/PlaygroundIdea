//
//  DesignTableViewCell.h
//  Playground Ideas
//
//  Created by 孙士博 on 2017/9/13.
//  Copyright © 2017年 PlaygroundIdeasQuoll. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DesignTableViewCell : UITableViewCell{
    UIImageView *imageView1;
    UIImageView *imageView2;
    UILabel *title1;
    UILabel *title2;
    UIButton *btn1;
    UIButton *btn2;
    
}

- (void)setData:(NSString *)imageStr1
      setImage2:(NSString *)imageStr2;

@end
