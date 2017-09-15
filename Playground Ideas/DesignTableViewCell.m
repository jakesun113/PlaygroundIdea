//
//  DesignTableViewCell.m
//  Playground Ideas
//
//  Created by 孙士博 on 2017/9/13.
//  Copyright © 2017年 PlaygroundIdeasQuoll. All rights reserved.
//

#import "DesignTableViewCell.h"
#import "AFNetworking.h"
#import "UIImageView+AFNetworking.h"
#import "DesignDetailViewController.h"

@implementation DesignTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    float SCREEN_WIDTH = UIScreen.mainScreen.bounds.size.width;
    //float SCREEN_HEIGHT = UIScreen.mainScreen.bounds.size.height;
    float picWidth = SCREEN_WIDTH/15*6;
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/15, SCREEN_WIDTH/15, picWidth, picWidth)];
        [self.contentView addSubview:imageView1];
        imageView1.userInteractionEnabled = YES;
        UITapGestureRecognizer *firstTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
        [imageView1 addGestureRecognizer:firstTap];
        
        imageView2 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/15*8, SCREEN_WIDTH/15, picWidth, picWidth)];
        [self.contentView addSubview:imageView2];
        imageView2.userInteractionEnabled = YES;
        UITapGestureRecognizer *secondTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
        [imageView2 addGestureRecognizer:secondTap];
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    return self;
}

- (void)setData:(NSString *)imageStr1
      setImage2:(NSString *)imageStr2
{
    [imageView1 setImageWithURL:[NSURL URLWithString:imageStr1]];
    
    [imageView2 setImageWithURL:[NSURL URLWithString:imageStr2]];
    
}

- (void)handleSingleTap:(UIGestureRecognizer *)gestureRecognizer {
    [[NSNotificationCenter defaultCenter]postNotificationName:@"detailNotification" object:self userInfo:nil];
//    DesignDetailViewController *detailController = [[DesignDetailViewController alloc]init];
//    [self.navigationController pushViewController:detailController animated:YES];
    
    //do something....
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
