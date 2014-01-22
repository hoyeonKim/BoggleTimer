//
//  bibimViewController.m
//  BoggleTimer
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "bibimViewController.h"
#define BIBIM_CELL @"BIBIM_CELL"
@interface bibimViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSArray *data2;
}
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UILabel *lbl2;
@property (weak, nonatomic) IBOutlet UITableView *table2;

@end

@implementation bibimViewController

//bibim
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:BIBIM_CELL];
    cell.textLabel.text = data2[indexPath.row];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [data2 count];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    data2 =@[@"짜파",@"스파",@"비빔"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
