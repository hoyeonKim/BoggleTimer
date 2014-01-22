//
//  ViewController.h
//  BoggleTimer
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSInteger mycounter;
}
- (IBAction)startButton:(id)sender;
- (IBAction)stopTouched:(UIButton *)sender;
- (IBAction)resetTouched:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UILabel *countdownLabel;

@property (nonatomic) BOOL isStarted;
@property (nonatomic, strong) NSTimer *mytimer;
@property (nonatomic) NSInteger mycounter;


@property (nonatomic, weak) IBOutlet UIButton *btnStop;
@property (nonatomic, weak) IBOutlet UIButton *btnStart;
@property (nonatomic, weak) IBOutlet UIButton *btnReset;




@end
