//
//  PageViewController.m
//  Pagining
//
//  Created by Sam Meech-Ward on 2017-06-16.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "PageViewController.h"
#import "SinglePageViewController.h"

@interface PageViewController () <UIPageViewControllerDataSource>

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    SinglePageViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"single-page-view-controller"]; // 1
    
    viewController.pageNumber = 1; // 2
    
    [self setViewControllers:@[viewController] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil]; // 3
    
    self.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Page View Controller

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    int previousPageNumber = ((SinglePageViewController *)viewController).pageNumber; // 1
    
    SinglePageViewController *nextPageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"single-page-view-controller"]; // 2
    
    nextPageViewController.pageNumber = previousPageNumber+1; // 3
    
    return nextPageViewController; // 4
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    int previousPageNumber = ((SinglePageViewController *)viewController).pageNumber; // 1
    
    SinglePageViewController *nextPageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"single-page-view-controller"]; // 2
    
    nextPageViewController.pageNumber = previousPageNumber-1; // 3
    
    return nextPageViewController; // 4
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
