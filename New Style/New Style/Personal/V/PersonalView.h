//
//  PersonalView.h
//  New Style
//
//  Created by 翟旭博 on 2022/12/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PersonalView : UIView <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView* personalTableView;
@property (nonatomic, strong) UIImageView* headImageView;
@property (nonatomic, strong) UILabel* nameLabel;
@property (nonatomic, strong) UILabel* signatureLabel;
@property (nonatomic, strong) UIView* backgroundView;
- (void)viewInit;
@end

NS_ASSUME_NONNULL_END
