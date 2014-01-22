//
//  productCell.h
//  BoggleTimer
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListOfRamen.h"


@interface productCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ramenTime;
@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UIImageView *productImage;
-(void)setProductInfo:(ListOfRamen *)item;
@end
