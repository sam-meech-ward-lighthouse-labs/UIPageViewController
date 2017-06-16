//
//  SinglePageViewController.m
//  Pagining
//
//  Created by Sam Meech-Ward on 2017-06-16.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "SinglePageViewController.h"

@interface SinglePageViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation SinglePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.label.text = [NSString stringWithFormat:@"Page: %i", self.pageNumber];

    self.view.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:206.0/255.0 blue:250.0/255.0 alpha:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
