//
//  HomeViewController.m
//  New Style
//
//  Created by 翟旭博 on 2022/12/6.
//

#import "HomeViewController.h"
#import "HomeView.h"
@interface HomeViewController ()
@property (nonatomic, strong) HomeView *homeView;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.homeView = [[HomeView alloc] initWithFrame:self.view.frame];
    self.navigationController.navigationBar.hidden = YES;
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] init];
    tabBarItem.title = @"主页";
    [tabBarItem  setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13]} forState:UIControlStateNormal];
    [tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont systemFontOfSize:13]} forState:UIControlStateSelected];
    [tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, 4)];
    [tabBarItem setImageInsets:UIEdgeInsetsMake(3, 0, -3, 0)];
    tabBarItem.image = [[UIImage imageNamed: @"zhuye.png"]imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed: @"zhuye2.png"]imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tabBarItem;
    [self.view addSubview:self.homeView];
    [self.homeView viewInit];
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
