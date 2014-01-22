//
//  ViewController.m
//  BoggleTimer
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "bibimViewController.h"
#define GOOK_CELL @"GOOK_CELL"
#define BIBIM_CELL @"BIBIM_CELL"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSArray *data;
}
@property (weak, nonatomic) IBOutlet UITableView *table1;
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UILabel *lbl1;


@end

@implementation ViewController
//국물라면 테이블뷰
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:GOOK_CELL];
    cell.textLabel.text = data[indexPath.row];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [data count];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    data =@[@"신라면",@"삼양",@"진"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
