//
//  ImageCell.m
//  TableViewReusableCell
//
//  Created by 谢鑫 on 2019/5/19.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "ImageCell.h"

@implementation ImageCell

/*- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}*/
- (void)dealloc
{
    NSLog(@"第%zd行被销毁",self.currentRow);
}
#if 0
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cellImageView=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetWidth([UIScreen mainScreen].bounds))];
        [self.contentView addSubview:self.cellImageView];
        NSLog(@"Cell被创建");
    }
    return self;
}
#else
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.cellImageView=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetWidth([UIScreen mainScreen].bounds))];
        [self.contentView addSubview:self.cellImageView];
        NSLog(@"Cell被创建");
    }
    return self;
}
#endif
-(void)updateCellAtRow:(NSUInteger)row{
    self.cellImageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%zd.png",row]];
    [self setCurrentRow:row];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
