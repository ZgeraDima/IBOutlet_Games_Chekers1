//
//  ViewController.m
//  DZ 20 - Obj_Skut_Outlets
//
//  Created by mac on 22.10.17.
//  Copyright © 2017 Dima Zgera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIColor* cellColorB;
@property (strong, nonatomic) UIColor* cellColorB2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.cellColorB = [UIColor blackColor];
    self.cellColorB2 = [UIColor colorWithRed:0.15 green:0 blue:0.5 alpha:1.0];
    
    [self alignBoard:self.board onMainView:self.mainView];
}

- (void) alignBoard:(UIView*) board onMainView: (UIView*) mainView {
    CGFloat minDim = MIN(mainView.bounds.size.height, mainView.bounds.size.width);
    [board setFrame:CGRectMake(0, 0, minDim, minDim)];
    board.center = mainView.center;
}

- (UIInterfaceOrientationMask)  supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
        
        UIColor* bgColor;
        
        if (UIInterfaceOrientationIsLandscape(orientation)) {
            bgColor = self.cellColorB2;
        } else {
            bgColor = self.cellColorB;
        }
        
        for (UIView* blackCell in self.blackCells) {
            blackCell.backgroundColor = bgColor;
        }
        
        for (int i = 0; i < [self.checkers count]/2 ; i++) {
            [self swipeCheckers];
        }
        
    } completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        
    }];
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
}

- (void) swipeCheckers {
    NSInteger numberOfBlackCells = [self.blackCells count];
    
    UIView* cellFrom = [self.blackCells objectAtIndex:arc4random_uniform(numberOfBlackCells)];
    CGRect from = [cellFrom convertRect:cellFrom.bounds toView:self.board];
    UIView* checkerForm = [self checkerInRect:from];
    
    UIView* cellTo = [self.blackCells objectAtIndex:arc4random_uniform(numberOfBlackCells)];
    CGRect to = [cellTo convertRect:cellTo.bounds toView:self.board];
    UIView* checkerTo = [self checkerInRect:to];
    
    if (checkerForm != nil){
        checkerForm.center = cellTo.center;
    }
    
    if (checkerTo != nil){
        checkerTo.center = cellFrom.center;
    }
}

- (UIView*) checkerInRect: (CGRect) rect {
    
    UIView* result = nil;
    
    for (UIView* checker in self.checkers) {
        if (CGRectContainsPoint(rect, checker.center)){
            result = checker;
        }
    }
    
    return result;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
