//
//  PersonalViewController.m
//  New Style
//
//  Created by 翟旭博 on 2022/12/6.
//

#import "PersonalViewController.h"
#import "PersonalView.h"
@interface PersonalViewController ()
@property (nonatomic, strong) PersonalView* personView;
@end

@implementation PersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] init];
    tabBarItem.title = @"我的";
    [tabBarItem  setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13]} forState:UIControlStateNormal];
    [tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont systemFontOfSize:13]} forState:UIControlStateSelected];
    [tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, 4)];
    [tabBarItem setImageInsets:UIEdgeInsetsMake(3, 0, -3, 0)];
    tabBarItem.image = [[UIImage imageNamed: @"wode1.png"]imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed: @"wode2.png"]imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tabBarItem;
    _personView = [[PersonalView alloc] initWithFrame:self.view.frame];
    
    [self.personView viewInit];
    [self.view addSubview:self.personView];

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
