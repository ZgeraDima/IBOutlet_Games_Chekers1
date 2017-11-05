//
//  ViewController.h
//  DZ 20 - Obj_Skut_Outlets
//
//  Created by mac on 22.10.17.
//  Copyright © 2017 Dima Zgera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *board;
@property (weak, nonatomic) IBOutlet UIView *mainView;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *cells;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *blackCells;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *checkers;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *whiteCheckers;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *blackCheckers;



@end

