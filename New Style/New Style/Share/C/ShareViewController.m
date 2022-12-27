//
//  ShareViewController.m
//  New Style
//
//  Created by 翟旭博 on 2022/12/6.
//

#import "ShareViewController.h"

@interface ShareViewController ()

@end

@implementation ShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] init];
    tabBarItem.title = @"分享";
    [tabBarItem  setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13]} forState:UIControlStateNormal];
    [tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont systemFontOfSize:13]} forState:UIControlStateSelected];
    [tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, 4)];
    [tabBarItem setImageInsets:UIEdgeInsetsMake(3, 0, -3, 0)];
    tabBarItem.image = [[UIImage imageNamed: @"share1.png"]imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed: @"share2.png"]imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tabBarItem;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
