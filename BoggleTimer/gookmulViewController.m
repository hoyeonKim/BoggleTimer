//
//  gookmulViewController.m
//  BoggleTimer
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "gookmulViewController.h"
#import "productCell.h"
#import "ListOfRamen.h"
#define GOOK_CELL @"GOOK_CELL"

@interface gookmulViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSArray *data;
}
@property (weak, nonatomic) IBOutlet UITableView *table1;
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UILabel *lbl1;

@end

@implementation gookmulViewController

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    productCell *cell =[tableView dequeueReusableCellWithIdentifier:GOOK_CELL];
    ListOfRamen *item =data[indexPath.row];
    [cell setProductInfo:item];
    return cell;
    
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [data count];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    data =@[[ListOfRamen ramen:@"신라면" time:@"210" image:@"images-5.jpeg"]];
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
