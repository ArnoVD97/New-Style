//
//  HomeView.m
//  New Style
//
//  Created by 翟旭博 on 2022/12/6.
//

#import "HomeView.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)
@interface HomeView ()
@property (nonatomic, strong) UIImageView *titleImageView;
@end
@implementation HomeView

- (void)viewInit {
    [self addSubview:self.titleImageView];
}
- (UIImageView *)titleImageView {
    if (!_titleImageView) {
        self.titleImageView = [[UIImageView alloc] initWithFrame:CGRectMake((SIZE_WIDTH - 170) / 2, 30, 170, 40)];
        self.titleImageView.image = [UIImage imageNamed:@"title1.png"];
    }
    return _titleImageView;
}
@end
