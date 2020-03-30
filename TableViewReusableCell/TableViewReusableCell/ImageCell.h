//
//  ImageCell.h
//  TableViewReusableCell
//
//  Created by 谢鑫 on 2019/5/19.
//  Copyright © 2019 Shae. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageCell : UITableViewCell
@property (nonatomic,strong)UIImageView *cellImageView;
@property (nonatomic,assign)NSInteger currentRow;
-(void)updateCellAtRow:(NSUInteger)row;
@end

NS_ASSUME_NONNULL_END
