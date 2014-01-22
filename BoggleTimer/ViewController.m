//
//  ViewController.m
//  BoggleTimer
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "bibimViewController.h"
#import "gookmulViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

@synthesize isStarted = _isStarted;
@synthesize mytimer = _mytimer;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mycounter=[self showTime.seconds];

    
    
}

- (void)updateTimer{ //Happens every time updateTimer is called. Should occur every second.
    
    self.mycounter -= 1;
    self.countdownLabel.text = [NSString stringWithFormat:@"%i", self.mycounter];
    
    if (self.mycounter < 0) // Once timer goes below 0, reset all variables.
    {
        
        self.countdownLabel.text = @"라면이 다 끓여졌습니다!! 얼른 건져내세요";
        
        [self.mytimer invalidate];
        self.isStarted = NO;
        
        
        
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButton:(id)sender
{
    if(self.isStarted == NO) //Check that another instance is not already running.
    {
        self.countdownLabel.text = @"시작";
        self.isStarted = NO;
        self.mytimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        [self buttonStatesWithStartState:NO stopState:YES resetState:NO];
    }
    UILocalNotification *noti = [[UILocalNotification alloc]init];
    noti.fireDate = [NSDate dateWithTimeIntervalSinceNow:7];
    noti.alertBody = @"라면이 다 끓여졌습니다!! 얼른 건져내세요";
    noti.alertAction = @"확인";
    noti.soundName = UILocalNotificationDefaultSoundName;
    
    noti.userInfo = nil;
    
    [[UIApplication sharedApplication]scheduleLocalNotification:noti];
}
- (IBAction)stopTouched:(UIButton *)sender
{
    [self.mytimer invalidate];
    self.mytimer = nil;
    
    [self buttonStatesWithStartState:YES stopState:NO resetState:YES];
}

- (IBAction)resetTouched:(UIButton *)sender
{
    self.countdownLabel.text = @"00 : 00 : 00";

    
    [self buttonStatesWithStartState:YES stopState:NO resetState:NO];
}

- (void)buttonStatesWithStartState:(BOOL)startState
                         stopState:(BOOL)stopState
                        resetState:(BOOL)resetState
{
    self.btnStart.enabled = startState;
    self.btnStop.enabled = stopState;
    self.btnReset.enabled = resetState;
    
    self.btnStart.alpha = self.btnStop.alpha = self.btnReset.alpha = .5;
    
    if (startState) self.btnStart.alpha = 1;
    if (stopState) self.btnStop.alpha = 1;
    if (resetState) self.btnReset.alpha = 1;
}

- (void)showTime
{
    //다른 뷰컨트롤러에서 입력했던 시간값을 받아와야함
    int minutes =[sel];
    int seconds = ;
    int hundredths = ;
    NSArray *timeArray = [NSArray arrayWithObjects:self.countdownLabel.text, nil];
    
    for(int i=0;i<[timeArray count];i++)
        //(int i = [timeArray count] - 1; i >= 0; i–)
    {
        int timeComponent = [[timeArray objectAtIndex:i] intValue];
        switch (i) {
        
            case 2:
                minutes = timeComponent;
                break;
            case 1:
                seconds = timeComponent;
                break;
            case 0:
                hundredths = timeComponent;
                hundredths++;
                break;
                
            default:
                break;
        }
        
    }
    if (hundredths == 0) {
        seconds--;
        hundredths = 100;
    }
    else if (seconds == 0) {
        minutes--;
        seconds = 60;
    }
    
    self.countdownLabel.text = [NSString stringWithFormat:@"%.2d : %.2d : %.2d", minutes,seconds,hundredths];
    
    
}



-(void)viewWillAppear:(BOOL)animated{
   
}


@end
