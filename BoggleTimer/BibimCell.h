//
//  BibimCell.h
//  BoggleTimer
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListOfRamen.h"

@interface BibimCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *bname;
@property (weak, nonatomic) IBOutlet UILabel *bRamenTime;
@property (weak, nonatomic) IBOutlet UIImageView *bImage;
-(void)setProductInfo:(ListOfRamen *)item;
@end
