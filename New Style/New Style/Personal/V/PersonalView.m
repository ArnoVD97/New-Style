//
//  PersonalView.m
//  New Style
//
//  Created by 翟旭博 on 2022/12/6.
//

#import "PersonalView.h"
#import "Masonry.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)
@implementation PersonalView

- (void)viewInit {
    _backgroundView = [[UIView alloc] init];
    _backgroundView.backgroundColor = [UIColor whiteColor];
    [_backgroundView.layer setMasksToBounds:YES];
    [_backgroundView.layer setCornerRadius:32];
    [self addSubview:_backgroundView];
    [_backgroundView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(@65);
        make.left.equalTo(@(SIZE_WIDTH/2-(SIZE_WIDTH-50)/2));
        make.width.equalTo(@(SIZE_WIDTH-50));
        make.height.equalTo(@(SIZE_HEIGHT/3));
    }];
    _headImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"head.jpg"]];
    [_headImageView.layer setMasksToBounds:YES];
    [_headImageView.layer setCornerRadius:32];
    [self addSubview:_headImageView];
    [_headImageView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(@85);
        make.left.equalTo(@(SIZE_WIDTH/2-52.5));
        make.width.equalTo(@105);
        make.height.equalTo(@105);
    }];
    _nameLabel = [[UILabel alloc] init];
    _nameLabel.text = @"漓江塔塔主";
    _nameLabel.textColor = [UIColor blackColor];
    _nameLabel.backgroundColor = [UIColor clearColor];
    [_nameLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:28]];
    [self addSubview:_nameLabel];
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(@120);
        make.left.equalTo(@(SIZE_WIDTH/2-75));
        make.width.equalTo(@200);
        make.height.equalTo(@200);
    }];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
    
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self;
}

@end
