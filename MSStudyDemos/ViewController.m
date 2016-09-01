//
//  ViewController.m
//  MSStudyDemos
//
//  Created by mr.scorpion on 16/9/1.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Draggable.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *dragView;
@end

@implementation ViewController
#pragma mark - View Life Cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // UIImageView ignored user events by default, so set
    // `userInteractionEnabled` to YES for receive touch events.
    self.dragView.userInteractionEnabled = YES;
    
    // Make avatarView draggable
    [self.dragView makeDraggable];
}
- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    // Update snap point when layout occured
    [self.dragView updateSnapPoint];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
